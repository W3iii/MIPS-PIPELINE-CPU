module FA(a, b, cin, cout, sum);

    input a, b, cin;
    output cout, sum;
    
    wire   e1, e2, e3;

    xor (e1, a, b);
    and (e2, a, b); 
    and (e3, e1, cin);
    or (cout,e2, e3);
    xor  (sum, e1, cin);

endmodule

