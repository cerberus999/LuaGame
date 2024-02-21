Class = require 'class'
require 'Menu'

menu = Menu()
Cursor = Class{
  init = function (self)
    self.x = 0
    self.y = 100
    self.menu = love.graphics.newImage('Scene/Menux.png')
    self.showM = false
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
    r,g,b,a = love.graphics.getColor();
    love.graphics.setColor(41/255,241/255,195/255,0.8);
    love.graphics.print("X", self.x, self.y, 0, 3.75, 3.75)
    love.graphics.setColor(r,g,b,a);
  end;

<<<<<<< HEAD
  select = function ()
    love.graphics.newImage("./Scene/Menux.png")
=======
  select = function (self)
    self.showM = not self.showM
>>>>>>> 22e93172efb307e6ce37cede01ed6c98eda69294
  end;
}
