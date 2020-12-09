module UAS_kelompok7(
    input [6:0] inA,
    input [6:0] inB,
    input [2:0] Sel,
    input clk,
    input rst,
    output reg [14:0] Out,
    output [6:0] inAdgt1,
    output [6:0] inAdgt2,
    output [6:0] inBdgt1,
    output [6:0] inBdgt2,
    output [6:0] outdgt1,
    output [6:0] outdgt2
);

parameter jumlah = 3'b000;
parameter kurang = 3'b001;
parameter bagi = 3'b010;
parameter kali = 3'b011;
parameter modulo = 3'b100;
parameter cos_degree = 3'b101;
parameter pol = 3'b110;
parameter pangkat = 3'b111;

always @ (clk,rst)
begin
    case(Sel)
        jumlah : begin
            Out = inA + inB;
        end
        kurang : begin
            Out = inA - inB;
        end
        bagi : begin
            Out = inA / inB;
        end
        kali : begin
            Out = inA * inB;
        end
        modulo : begin
            Out = inA % inB;
        end
        pangkat : begin
            Out = 10**inA;
        end
    endcase
end

endmodule