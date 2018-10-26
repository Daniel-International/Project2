// Test bench file for project 2
// Michael Ulicny, Filip Jovanovski, Christopher Donald
module combinational_circuit_tb();
    reg x, y, z, g;    //three inputs to combinational circuit
    wire F1, F2, F3 //three outputs from combinational circuit
    initial begin
        //test data
        g = 0;
        x = 0; y = 0; z = 0;
        #1 x = 0; y = 0; z = 1;
        #1 x = 0; y = 1; z = 0;
        #1 x = 0; y = 1; z = 1;
        #1 x = 1; y = 0; z = 0;
        #1 x = 1; y = 0; z = 1;
        #1 x = 1; y = 1; z = 0;
        #1 x = 1; y = 1; z = 1;
        #1 g = 1; $finish; //stop simulation
    end

    combinational_circuit comb1(x, y, z, F1, F2, F3);

endmodule