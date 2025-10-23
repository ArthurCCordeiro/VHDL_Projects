--======================================================================

-- FIAP (Faculdade de Informática e Administração Paulista)

-- Student: Arthur Colombo Cordeiro RM551262

-- Professor: Fabio Henrique Pimentel

-- Subject: Digital System Lab

-- Studied Object: Behavior Half Adder

--======================================================================

entity meioSomador is
    port(x,y,habilita:in bit;
	 vai_um,resultado:out bit);
end meioSomador;

architecture behavior of meioSomador is
begin
    process(habilita,x,y)	     
	 begin
	     if(habilita='1')then
		     resultado<=x xor y;
			  vai_um<=x and y; 
	     else
		     vai_um<='0';
			  resultado<='0';
		  end if;
	 end process;
end behavior;