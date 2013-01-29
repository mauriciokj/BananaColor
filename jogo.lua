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
end

function mostrar_jogadas()

end