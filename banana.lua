Banana = Core.class(Sprite)

function Banana:init(color)
	self.imagem = Bitmap.new(Texture.new("gfx/banana_"..color..".png"))
	self:addChild(self.imagem)
	self.cor = color
	self:addEventListener(Event.MOUSE_DOWN, self.onMouseDown, self)
end

function Banana:onMouseDown(event)
	function corOriginal()
		self:setColorTransform(1,1,1)
	end

	if self:hitTestPoint(event.x, event.y) then
		if self.cor == "amarela" then
			self:setColorTransform(1,0.7,0.3)
		elseif self.cor == "vermelha" then
			self:setColorTransform(1,0,0)
		elseif self.cor == "verde" then
			self:setColorTransform(0,1,0)	
		elseif self.cor == "azul" then
			self:setColorTransform(0.2,0.3,1)
		end	
		Timer.delayedCall(500,corOriginal)
		
	end
end
