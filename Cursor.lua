Class = require 'class'
require 'Menu'

menu = Menu()
Cursor = Class{
  init = function (self)
    self.x = 0
    self.y = 100
    self.menu = Menu()
  end;

  move = function(self, dir)
    dir = string.lower(dir)
    if dir == 's' and self.y <= Height - 60 then
      self.y= self.y+ 50
    elseif dir == 'w' and self.y >= 40 then
      self.y = self.y- 50
    elseif dir == 'd' and self.x <= Width - 60 then
      self.x = self.x + 50
    elseif dir == 'a' and self.x >= 40 then
      self.x = self.x - 50
    end
  end;

  draw = function (self)
    love.graphics.print("X", self.x, self.y, 0, 3.75, 3.75)
  end;

  select = function ()
  end;
}
