green = nil
blue = nil
grey = nil
tile = nil

function love.load()
   green = love.graphics.newImage('green.png')
   blue = love.graphics.newImage('blue.png')
   grey = love.graphics.newImage('grey.png')

   screenmap = {}

end

-- function love.update()

function love.draw()
    for y=0,32 do
       for x=0,24 do
	  local colour = love.math.random(1,10)
	  if colour == 1 then
	     tile = blue
	  elseif colour == 10 then
	     tile = grey
	  else
	     tile = green
	  end
--	  print(tile)
	  love.graphics.draw(tile, 32*x, 32*y)
       end
    end
end
