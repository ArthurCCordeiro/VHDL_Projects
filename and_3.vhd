--======================================================================

-- FIAP (Faculdade de Informática e Administração Paulista)

-- Student: Arthur Colombo Cordeiro

-- Professor: Fabio Henrique Pimentel

-- Subject: Digital System Lab

-- Study Object: Strutural Half Adder

--======================================================================

-- Creating another AND Gate:


entity and_3 is

	port(a,b,c:in bit;s:out bit); -- Different from "and_2" this one has 3 inputs
	--       ^ It changes here (Adds the Input "c")
	--       |

end and_3;



architecture dataFlow of and_3 is 
begin
--    {            } It changes here
	s<=a and b and c;
end dataFlow;

--======================================================================