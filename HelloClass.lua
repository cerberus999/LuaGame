Class = require 'class'

HelloClass = Class{
  init = function(self, name)
    self.name = name
    self.datos = {11,4,2,6,7,2,3,56,3,2}
    self.x = 440
    self.y = 110
  end;

  draw = function(self)
    love.graphics.polygon("line", self.x, self.y, 0, 20, 100, 50)
    love.graphics.print("Hola Mundo", 80, 80, 0, 1.5, 1.5)
    return #self.datos .. " " .. self.name
  end;
}

