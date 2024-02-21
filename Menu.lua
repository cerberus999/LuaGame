Class = require 'class'

Menu = Class{
    init = function (self)
        self.pos = {200, 150}
        self.background = love.graphics.newImage("Scene/Menux.png")
        self.values = {"Resume Game", "Exit"}
    end;

    draw = function (self)
        x = self.pos[1]
        y = self.pos[2]
        r,g,b = love.graphics.getColor()
        font = love.graphics.newFont("arial.ttf", 32)
        love.graphics.setFont(font)
        love.graphics.draw(self.background, x, y, 0, 1, 0.9)
        love.graphics.setColor(210/255,155/255,30/255)
        love.graphics.print(self.values[1], x+90, y+100, 0)
        love.graphics.print(self.values[2], x+90, y+180, 0)
        love.graphics.setColor(r,g,b)
    end;

    clear = function (self) 
        love.graphics.clear()
    end
}