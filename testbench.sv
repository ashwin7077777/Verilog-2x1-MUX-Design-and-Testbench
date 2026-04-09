// Code your testbench here
// or browse Examples
`timescale 1ns/1ps   
module mux_tb;
  reg a,b,sel;
  wire x;
  
  
  mux uut(.a(a),.b(b),.sel(sel),.x(x));
  
  
  initial begin
    
    $display("Time | sel a b |x");
    $monitor("%4t |  %b   %b %b | %b", $time, sel, a, b, x);
    
    
    a=0;b=0;sel=0;#10;
    a=0;b=1;sel=0;#10;
    a=1;b=0;sel=0;#10;
    a=1;b=1;sel=0;#10;
    
    
     
    a=0;b=0;sel=1;#10;
    a=0;b=1;sel=1;#10;
    a=1;b=0;sel=1;#10;
    a=1;b=1;sel=1;#10;
    
    
    $finish ;
  end
    
endmodule