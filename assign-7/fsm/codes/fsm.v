module fsm(CLK, RESET, INP, OUT);
    input CLK, RESET, INP;
    output reg OUT;
    reg [2:0] state;
	 
    always @(posedge CLK or posedge RESET) begin
        if (RESET == 1) begin
            state <= 0;
            OUT <= 0;
        end
        else begin 
            // STATE 00
            if (state == 0) begin
                if (INP == 0) begin 
                    state <= 1;
                end
                else begin
                    state <= 3;
                end
            end
            
            // STATE 01
            if (state == 1) begin
                if (INP == 0) begin 
                    state <= 1;
                end
                else begin
                    state <= 2;
                end
            end
            
            // STATE 10
            if (state == 2) begin
                if (INP == 0) begin 
                    state <= 5;
                end
                else begin
                    state <= 2;
                end
            end

            // STATE 11-1
            if (state == 3) begin
                if (INP == 0) begin
                    state <= 4;
                end
                else begin 
                    state <= 3;
                end
            end

            // STATE 11-0
            if (state == 4) begin
                if (INP == 0) begin
                    state <= 4;
                end
                else begin 
                    state <= 6;
                end
            end

            // STATE 12
            if (state == 5) begin
                if (INP == 0) begin
                    state <= 5;
                end
                else begin 
                    state <= 7;
                    OUT <= 1;
                end
            end
            
            // STATE 21
            if (state == 6) begin
                if (INP == 0) begin
                    state <= 7;
                    OUT <= 1;
                end
                else begin
                    state <= 6;                 
                end
            end   
        end
    end
endmodule


