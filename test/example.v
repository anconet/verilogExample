module example (
    input wire input1,
    input wire input2,
    output reg exampleOutput
    );

    `include "defines.v"

    always @(*) begin
        if (input1 == 1'b1 &&
            input2 == 1'b0) begin

                exampleOutput = 1'b1;
            end
        else begin
            
            exampleOutput = `ActiveLow;
        end
            
    end 

endmodule