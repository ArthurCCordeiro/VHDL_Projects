--======================================================================

-- FIAP (Faculdade de Informática e Administração Paulista)

-- Student: Arthur Colombo Cordeiro

-- Professor: Fabio Henrique Pimentel

-- Subject: Digital System Lab

-- Study Object: Strutural Half Adder

--======================================================================

-- Creating an XOR Gate:


entity xor_2 is

	port(a,b:in bit;s:out bit);

end xor_2;



architecture dataFlow of xor_2 is 
begin

	s<=a xor b;
end dataFlow;

--======================================================================