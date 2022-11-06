module scheduler #
(
    parameter depth = 8, // up till 'depth' trigger events can be schecduled
    parameter THRESHOLD = 4,
    parameter TIMER_WIDTH = 64
)
(
   //APB3 signals
   input  logic pclk, presetn,penable,psel,
   input  logic [31:0] paddr,
   input  logic pwrite,
   input  logic [TIMER_WIDTH - 1:0] pwdata,
   output logic [TIMER_WIDTH - 1:0] prdata,
   output logic pready,
   output logic pslverr,

   output logic trigger
);

localparam integer WRITE_POINTER_WIDTH = $clog2(depth);
reg  [WRITE_POINTER_WIDTH - 1:0] writepointer;
reg  [TIMER_WIDTH - 1:0] sched_regs[0:depth - 1];
reg  [TIMER_WIDTH - 1:0] internal_counter;
reg  [depth - 1:0] triger_reg;
wire [depth - 1:0] triger_out;
reg  [WRITE_POINTER_WIDTH - 1:0] writepointer_cnt;

assign pslverr = 1'b0;

// free running 64 bit counter (our actual time passing counter)
always @(posedge pclk or negedge presetn) begin 
   if (!presetn) begin 
      internal_counter <= 32'h0;
   end
   else begin 
      internal_counter <= internal_counter + 1'b1;
   end
end

// Reading out the current time
always @(posedge pclk or negedge presetn) begin 
   if (!presetn) begin 
      prdata <= 0;
   end
   else begin 
      if (!pwrite && psel && paddr[2:0] == 1) begin 
         prdata <= internal_counter[31:0] + 1'b1;
      end 
      else if (!pwrite && psel && paddr[2:0] == 2) begin 
         prdata <= internal_counter[63:32] + 1'b1;
      end
      else begin 
         prdata <= 0;
      end 
   end
end 

// Writing events to the scheduler
always @(posedge pclk or negedge presetn) begin 
   if (!presetn) begin 
      writepointer <= 0;
      writepointer_cnt <= 0;
      pready <= 1'b0;
   end
   else begin 
      if (pwrite && psel && paddr[2:0] == 1 && (pwdata > internal_counter)) begin 
         sched_regs[writepointer] <= pwdata;
         writepointer <= writepointer + 1'b1;
         writepointer_cnt <= writepointer_cnt + 1'b1;
         pready <= 1'b1;
      end
      else  if (pwrite && psel && paddr[2:0] == 2 && (pwdata > internal_counter)) begin 
         sched_regs[writepointer] <= pwdata;
         writepointer <= writepointer + 1'b1;
         writepointer_cnt <= writepointer_cnt + 1'b1;
         pready <= 1'b1;
      end
   end 
end

integer i;
always @(posedge pclk or negedge presetn) begin 
   if (!presetn) begin 
      triger_reg[i] <= 32'h0;
   end
   else begin 
      for (i = 0; i < depth; i = i + 1) begin 
      if (internal_counter == sched_regs[i] - 1  && writepointer > 0) begin 
         triger_reg[i] <=  1'b1;
         writepointer_cnt <= writepointer_cnt - 1'b1;
      end
      else begin 
         triger_reg[i] <=  1'b0;
         writepointer_cnt <= writepointer_cnt;
      end 
    end
   end
end

wire [depth-1:0] y;

generate
  genvar j;
  for(j = 0 ; j < depth ; j = j + 1) begin
    assign y[j] = triger_reg[j];
  end
endgenerate

assign trigger = |y;

endmodule
