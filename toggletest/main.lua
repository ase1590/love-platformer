function love.load()
	counter = 2
	text = "test"
-- set up some fonts
	small = love.graphics.newFont(25)
	medium = love.graphics.newFont(45)
	large = love.graphics.newFont(72)


end



function love.draw()

	love.graphics.setFont(small)
	love.graphics.setColor(255,255,255, 200)
	love.graphics.print(text, 300, 100)

end



function love.update()

counter = counter+1


end



function love.keypressed(key)
   if key == 'b' then
      text = ""
   elseif key == 'a' then
      text = counter
   end
end