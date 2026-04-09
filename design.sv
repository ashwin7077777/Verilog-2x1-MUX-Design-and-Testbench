// Code your design here
module mux(input a,b,sel,output reg x);
  always@(*) 
    begin
      if(sel==1'b0)
        begin
        x=a;
        end
      else 
        begin
        x=b;
        end
    end
  
 endmodule