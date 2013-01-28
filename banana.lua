Banana = Core.class(Sprite)

function Banana:init(color)
	self.imagem = Bitmap.new(Texture.new("gfx/banana_"..color..".png"))
	self:addChild(self.imagem)
end