require 'HelloClass'
require 'Personaje'
require 'Terrain'
require 'Weapon'
require 'Cursor'
--Esto es un comentario inutil
DefaultFont = love.graphics.getFont()
StructureFont = love.graphics.newFont("squarethings2.ttf")
StructureFont:setFilter('nearest')

Key = ''

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
  Key = string.lower(key)
  if Key == 'w' or Key == 's' or Key == 'd' or Key == 'a' then
    Cursor:move(Key)
  elseif Key == 'j' then
    Cursor:select()
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
  love.graphics.print(Key, 50, 50)
  if Cursor.showM then
    
  end
  -- love.graphics.draw(Sword,0,0)

  -- love.graphics.print(text, 500, 500)
end
