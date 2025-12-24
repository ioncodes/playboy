`timescale 1ns / 1ps

typedef struct packed {
  logic r;
  logic g;
  logic b;
} rgb_t;

module mbc1(
  input logic clk,          // internal clock
  input logic gb_clk,       // system clock
  input logic wr,           // write signal, active low
  input logic rd,           // read signal, active low
  input logic cs,           // chip select
  input logic rst,          // reset signal
  input logic vin,          // audio?
  input logic [15:0] addr,  // address bus
  inout logic [7:0] data,   // data output
  output logic data_dir,    // data direction
  output rgb_t status_led   // status LED
);
  logic [7:0] rom_data [0:524287];
  logic [4:0] bank_number = 1;
  logic [7:0] data_out;
  logic [7:0] data_in;

  initial begin
    $readmemh("rom.hex", rom_data);
  end

  assign rom_read = !rd && !addr[15];
  
  assign data = rom_read ? data_out : 8'hZZ;
  assign data_in = data;

  assign data_dir = rom_read; // 1 = FPGA->GB, 0 = GB->FPGA

  always_comb begin
    // Handle ROM read
    if (addr < 16'h4000) begin
      // Bank 0: 0x0000-0x3FFF (always bank 0)
      data_out = rom_data[addr[13:0]];
    end else begin
      // Banked: 0x4000-0x7FFF (bank 1-7)
      data_out = rom_data[{bank_number, addr[13:0]}];
    end
  end

  always_ff @(posedge clk) begin
    // Handle bank switching
    if (!wr && addr >= 16'h2000 && addr < 16'h4000) begin
      // Bits 0-4 select bank (0 treated as 1)
      if (data_in[4:0] == 5'd0)
        bank_number <= 5'd1;
      else
        bank_number <= data_in[4:0];
    end

    // Handle reset
    // if (!rst) begin
    //   bank_number <= 1;
    // end
  end

endmodule