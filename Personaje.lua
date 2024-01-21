Class = require 'class'

Height = love.graphics.getHeight()
Width = love.graphics.getWidth()

Personaje = Class{
  init = function(self, name, posx, posy, character, defFont, strFont)
    self.name = name
    self.posX = posx
    self.posY = posy
    self.character = character
    self.DF = defFont
    self.SF = strFont
  end;

  draw = function(self)
    love.graphics.setFont(self.DF)
    love.graphics.print(self.name, self.posX-15, self.posY-15)
    love.graphics.setFont(self.SF)
    love.graphics.print(self.character, self.posX, self.posY, 0, 3.75, 3.75)
  end;

}
