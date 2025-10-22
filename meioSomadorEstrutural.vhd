--======================================================================

-- FIAP (Faculdade de Informática e Administração Paulista)

-- Student: Arthur Colombo Cordeiro

-- Professor: Fabio Henrique Pimentel

-- Subject: Digital System Lab

-- Study Object: Strutural Half Adder

--======================================================================

-- Creating the stucture for inputs and outputs:

entity meioSomadorEstrutural is
	port(x,y,habilita:in bit; -- Defining inputs"x,y,habilita"
	resultado,vaiUm:out bit);-- Defining outputs "resultado,vaiUm"
end meioSomadorEstrutural;

--======================================================================

-- Using  components already existents on the 3 primitive files

-- To indentify the gate for the program you copy the port of it 
-- from the other archive
architecture structural of meioSomadorEstrutural is
	component xor2 port(a,b:in bit;s:out bit); end component;
	component and2 port(a,b:in bit;s:out bit); end component;
	component and3 port(a,b,c:in bit;s:out bit); end component;
-- Structure: "component", "nome da porta", "port", "end component"

		
-- Links component with his name on his name here
	for all:xor2 use entity work.xor_2(dataFlow);
	for all:and2 use entity work.and_2(dataFlow); 
	for all:and3 use entity work.and_3(dataFlow);
	
	signal j:bit;
--======================================================================
-- Drawing the Strutural Diagram on a descritive form
-- (this code creates the diagram)

begin

-- Functionality: You need to describe the inputs and outputs of the components
-- in the order of the original port.
-- Example: On "xor2" (port(a,b:in bit;s:out bit), the order is "a,b,s"
--                          ^ ^        ^

-- When reading the code it will be: "Input 1, Input 2, Output"

	c1: xor2 port map(x,y,j); -- the "s" represents the output
	c2: and2 port map(j,habilita,resultado); 
	c3: and3 port map(x,y,habilita,vaiUm);
end structural;	

--======================================================================