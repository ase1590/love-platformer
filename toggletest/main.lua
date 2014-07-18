function love.load()
	counter = 2
	showtext = false
-- set up some fonts
	small = love.graphics.newFont(25)
	medium = love.graphics.newFont(45)
	large = love.graphics.newFont(72)


end



function love.draw()

	love.graphics.setFont(small)
	love.graphics.setColor(255,255,255, 200)
	toggletext()

end



function love.update()

counter = counter+1


end



function love.keypressed(key)
   if key == 'a' and showtext == false then
      showtext = true
    elseif key == 'a' and showtext == true then
        showtext = false
		
   end
end

function toggletext()
	if showtext == true then
		love.graphics.print(counter, 300, 100)
	elseif showtext == false then
		love.graphics.print("", 300, 100)
	end
end