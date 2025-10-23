--======================================================================

-- FIAP (Faculdade de Informática e Administração Paulista)

-- Student: Arthur Colombo Cordeiro RM551262

-- Professor: Fabio Henrique Pimentel

-- Subject: Digital System Lab

-- Studied Object: Strutural Half Adder

--======================================================================

-- Creating an AND gate:

entity and_2 is

	port(a,b:in bit;s:out bit);

end and_2;



architecture dataFlow of and_2 is 
begin

	s<=a and b;
end dataFlow;

--======================================================================