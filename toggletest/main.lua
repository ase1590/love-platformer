require "toggletext"


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



