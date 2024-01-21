Class = require 'class'

Terrain = Class{
  init = function(self)
    self.map = {{{}}}

    self.rockSoil = love.graphics.newImage("Pit1.png")
    self.soil = love.graphics.newImage('Scene/Losa04.png')

    self.w = love.graphics.getWidth()
    self.h = love.graphics.getHeight( )
  end;

  draw = function (self)
    local r,g,b,a = love.graphics.getColor()
    for i = 0, 20, 1 do
      love.graphics.setColor(156/255,158/255,111/255,200/255)
      love.graphics.line(i*50,0,i*50,self.h)
      love.graphics.setColor(0/255,185/255,200/255,200/255)
      love.graphics.line(0,i*50,self.w,i*50)
    end
    love.graphics.setColor(r,g,b,a)
    for i = 0, 20 , 1 do
      for j = 0, 20, 1 do
        love.graphics.draw(self.soil, i*50, j*50, 0, 0.22, 0.21)
      end
    end
  end
}
