`timescale 1ns / 1ps

typedef struct packed {
  logic r;
  logic g;
  logic b;
} rgb_t;

module rom(
  input logic clk,          // internal clock
  input logic gb_clk,       // system clock
  input logic wr,           // write signal, active low
  input logic rd,           // read signal, active low
  input logic cs,           // chip select
  input logic rst,          // reset signal
  input logic vin,          // audio?
  input logic [15:0] addr,  // address bus
  output logic [7:0] data,  // data output
  output rgb_t status_led   // status LED
);
  logic [7:0] rom_data [0:32767];

  initial begin
    $readmemh("rom.hex", rom_data);
  end
  
  assign data = (!rd && !addr[15] && wr && cs) ? rom_data[addr[14:0]] : 8'hZZ;

endmodule