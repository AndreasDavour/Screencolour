-- Playing around with the idea of procedurally generated gfx

green = nil
blue = nil
grey = nil
tile = nil



function love.load()
   -- setup
   love.window.setMode(1024,768)

   -- 32px w/h blocks
   green = love.graphics.newImage('green.png')
   blue = love.graphics.newImage('blue.png')
   grey = love.graphics.newImage('grey.png')

   -- screen size 1024x768 == 32x32px X 24x32px
   screenmap = {}
   for x=0,32 do
      screenmap[x] = {}
      for y=0,24 do
	 local colour = love.math.random(1,10)
	 if colour >= 1 and colour <= 3 then
	    screenmap[x][y] = blue
	 elseif colour > 8 and colour < 11 then
	    screenmap[x][y] = grey
	 else
	    screenmap[x][y] = green
	 end
      end
   end -- end of outer FOR

end

-- function love.update()

function love.draw()
   for x=0,32 do
      for y=0,24 do
	 love.graphics.draw(screenmap[x][y], 32*x, 32*y)
      end
   end
end
