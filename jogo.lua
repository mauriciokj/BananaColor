Jogo = Core.class(Sprite)

function Jogo:init(color)
	self.sequencia = {}
	self.jogada = {}
	self.cores = {"amarela", "azul", "vermelha", "verde"}
end


function Jogo:jogar()
	table.insert(self.sequencia, self.cores[math.random(1,4)])
	i = 1
	for i = 1, table.getn(self.sequencia) do		
		print(self.sequencia[i])
	end
end


function Jogo:acertou()
	i = 1
	for i = 1, table.getn(self.sequencia) do		
		if self.sequencia[i] == self.jogada[i] then
			retorno = true
		else	
			retorno = false
			break
		end
	end
	return retorno
end

function Jogo:mostrar_jogadas()
	function pinta(cor,original)
	print("entrou no pinta")
	print(cor)
	print(original)
		if cor == "amarelo" then
			if original then
				banana_amarela:setColorTransform(1,1,1)
			else
				banana_amarela:setColorTransform(1,0.7,0.3)
				pinta(cor, true)
			end		
		elseif cor == "azul" then	
			if original then 
				banana_azul:setColorTransform(1,1,1)
			else	
				banana_azul:setColorTransform(0.2,0.3,1)
				pinta(cor, true)
			end	
		elseif cor == "vermelha" then	
			if original then 
				banana_vermelha:setColorTransform(1,1,1)
			else	
				banana_vermelha:setColorTransform(1,0,0)
				pinta(cor, true)
			end
		elseif cor == "verde" then	
			if original then
				banana_verde:setColorTransform(1,1,1)
			else	
				banana_verde:setColorTransform(0,1,0)	
				pinta(cor, true)
			end	
			
		end
	end
	i = 1
	for i = 1, table.getn(self.sequencia) do
		print("entrou no for")
		print(i)
		print(self.sequencia[i])
		--pinta(self.sequencia[i], false)
		--Timer.delayedCall(1000, (pinta(self.sequencia[i], false)))		
	end
	
end