--======================================================================

-- FIAP (Faculdade de Informática e Administração Paulista)

-- Student: Arthur Colombo Cordeiro RM551262

-- Professor: Fabio Henrique Pimentel

-- Subject: Digital System Lab

-- Studied Object: Strutural Half Adder

--======================================================================

-- Creating a XOR Gate:

entity xor_2 is

	port(a,b:in bit;s:out bit);

end xor_2;



architecture dataFlow of xor_2 is 
begin

	s<=a xor b;
end dataFlow;

--======================================================================