/*
    Abordagem Estrutural
        * Descreve o circuito em termos das portas lógicas, blocos e suas interconexões;
        * Utiliza primitivas para construir o comportamento do circuito;
        * Blocos elementares (primitivas) -> portas lógicas; (and, or, nand, nor, xor, xnor ...)
        <primitiva> nome (ligação);

    Construir o circuito utilizando abordagem estrutural é tão só:
        * Referenciar as primitivas adequadas;
        * Realizar a ligação entre elas.
    Para ligar a saída de uma primitiva para entrada de outra, deve-se declarar um fio imtermediário (wire);

    Circuito elaborado -- Somador Completo.
*/

module 
    (
        //Declaração das portas
        input a, b, cin
        output s, cout
    );

    //Declaração dos fios intermediarios
    wire w1, w2, w3;

    //Funcionamento do circuito - abordagem estrutura (referenciar as portas)
    xor u0 (w1, a, b);
    xor u1 (s, w1, cin);
    end u2 (w2, cin, w1);
    end u3 (w3, a, b);
    or  u4 (cout, w2, w3);
endmodule