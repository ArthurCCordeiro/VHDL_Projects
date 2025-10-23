--======================================================================

-- FIAP (Faculdade de Informática e Administração Paulista)

-- Student: Arthur Colombo Cordeiro RM551262

-- Professor: Fabio Henrique Pimentel

-- Subject: Digital System Lab

-- Studied Object: Strutural Half Adder

--======================================================================

-- Creating the stucture and the outputs:

entity meioSomadorEstrutural is
	port(x,y,habilita:in bit; -- Defining inputs "x,y,habilita"
	resultado,vaiUm:out bit);-- Defining outputs "resultado,vaiUm"
end meioSomadorEstrutural;

--======================================================================

-- Utilizing components already created on the 3 primitive files

-- To make the program identify the port of the entity you copy the port form the other files
architecture structural of meioSomadorEstrutural is
	component xor2 port(a,b:in bit;s:out bit); end component;
	component and2 port(a,b:in bit;s:out bit); end component;
	component and3 port(a,b,c:in bit;s:out bit); end component;
-- Structure: "component", "gate name", "port",("defining inputs and outputs") "end component"

		
-- Links the component with the name given here
	for all:xor2 use entity work.xor_2(dataFlow);
	for all:and2 use entity work.and_2(dataFlow); 
	for all:and3 use entity work.and_3(dataFlow);
	
	signal j:bit; --Add a name for a undefined output
--======================================================================
-- Drawing the Structural Diagram in a descritive form
-- (code of the diagram)

begin

-- Functionality: Is needed to describe the inputs and outputs of the component

-- Example: On the "xor2" gate (port(a,b:in bit;s:out bit), the order is "a,b,s"
--                                   ^ ^        ^
-- So, when the code reads it will see "Input 1,Input 2, Output"

	c1: xor2 port map(x,y,j); -- the "s" represents a output
	c2: and2 port map(j,habilita,resultado); 
	c3: and3 port map(x,y,habilita,vaiUm);
end structural;	

--======================================================================