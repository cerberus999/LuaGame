require 'HelloClass'
require 'Personaje'
require 'Terrain'
require 'Weapon'
require 'Cursor'
love = love

DefaultFont = love.graphics.getFont()
StructureFont = love.graphics.newFont("squarethings2.ttf")
StructureFont:setFilter('nearest')

function love.load()

  map = {}

  -- love.graphics.setBackgroundColor(0,120/255,0)
  Cursor = Cursor()
  Terrain = Terrain()
  Personaje = Personaje('Sparrow', 100, 100, 'X', DefaultFont, StructureFont)
  Intento = HelloClass('Pedro')
  Sword = Weapon("Masamune", "Sword1.png")

end

function love.update()
end

function love.keypressed(key)
  key = string.lower(key)
    if key == 'w' or key == 's' or key == 'd' or key == 'a' then
      Cursor:move(key)
    end
end

function love.draw()
  StructureFont:setLineHeight(0.1)
  -- local text = Intento:draw()
  Terrain:draw()
  love.graphics.setFont(DefaultFont)
  love.graphics.print(type(map),150,150)
  Personaje:draw()
  Sword:draw()
  Cursor:draw()
  -- love.graphics.draw(Sword,0,0)

  -- love.graphics.print(text, 500, 500)
end
