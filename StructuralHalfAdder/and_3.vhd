--======================================================================

-- FIAP (Faculdade de Informática e Administração Paulista)

-- Student: Arthur Colombo Cordeiro RM551262

-- Professor: Fabio Henrique Pimentel

-- Subject: Digital System Lab

-- Studied Object: Strutural Half Adder

--======================================================================

--Creating another AND gate:

entity and_3 is

	port(a,b,c:in bit;s:out bit); -- Diferently from "and_2" this one has 3 inputs
	--       ^ It changes here (adding "c" input )
	--       |

end and_3;



architecture dataFlow of and_3 is 
begin
--           {     } <-- Changes here too (adding " and c")
	s<=a and b and c;
end dataFlow;

--======================================================================