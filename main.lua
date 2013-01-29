stage:setOrientation(Stage.LANDSCAPE_LEFT)
local function onKeyUp(event)
	if even.keyCode == KeyCode.BACK then
		application.exit()
	end	
end
stage:addEventListener(Event.KEY_UP, onKeyUp)


banana_amarela = Banana.new("amarela")
banana_verde = Banana.new("verde")
banana_vermelha = Banana.new("vermelha")
banana_azul = Banana.new("azul")

jogo = Jogo.new()

banana_verde:setX(70)
banana_verde:setY(180)

banana_azul:setX(320)
banana_azul:setY(70)

banana_vermelha:setX(570)
banana_vermelha:setY(180)

banana_amarela:setX(320)
banana_amarela:setY(290)

stage:addChild(banana_amarela)
stage:addChild(banana_azul)
stage:addChild(banana_vermelha)
stage:addChild(banana_verde)


jogo:jogar()



