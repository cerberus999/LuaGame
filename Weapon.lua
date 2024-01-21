Class = require 'class'

Weapon = Class{
  init = function (self, name, image)
    self.name = name
    self.image = love.graphics.newImage(""..image)
  end;

  draw = function (self)
    love.graphics.draw(self.image,0,0,0,1.25,1.25)
  end;
}
