module traffic_light(
  input clk,
  input reset,
  output reg red,
  output reg green,
  output reg yellow);
  localparam Red=2'b00;
  localparam Green=2'b01;
  localparam Yellow=2'b10;
  reg[1:0]current_state;
  reg[1:0]nxt_state;
  always @(posedge clk)begin
    if(reset)begin
      current_state<=red;
    end
    else begin
        current_state<=nxt_state;
    end
  end
    always@(*)begin
      case(current_state)
        Red:begin
          nxt_state=Green;
        end
        Green:begin
          nxt_state=Yellow;
        end
        Yellow:begin
          nxt_state=Red;
        end
        default:begin
          nxt_state=Red;
        end
      endcase
    end
    always@(*)begin
      red=0;
      green=0;
      yellow=0;
      case(current_state)
        Red:begin
          red=1;
        end
        Green:begin
          green=1;
        end
        Yellow:begin
          yellow=1;
        end
      endcase
    end
endmodule