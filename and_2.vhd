--======================================================================

-- FIAP (Faculdade de Informática e Administração Paulista)

-- Student: Arthur Colombo Cordeiro

-- Professor: Fabio Henrique Pimentel

-- Subject: Digital System Lab

-- Study Object: Strutural Half Adder

--======================================================================

-- Creating AND Gate:

entity and_2 is

	port(a,b:in bit;s:out bit);

end and_2;



architecture dataFlow of and_2 is 
begin

	s<=a and b;
end dataFlow;

--======================================================================