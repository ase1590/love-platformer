-- set up the ai 

-- according to IRC ai = { x = 1, y = 2, scale = { x = 3, y = 4 } } -- ai.scale.y

ai = {}
ai.x = 700 - (3 * ai.scale_x) --check this math for errors
ai.y = 20
ai.scale_x = 10
ai.scale_y = 50
ai.speed = 6
ai.score = 0

function ai_draw()
	love.graphics.setColor(255,255,255)
	love.graphics.rectangle("fill", ai.x, ai.y, ai.scale_x, ai.scale_y)
end

function ai_move()
	if love.keyboard.isDown("up") then
		ai.y = ai.y - ai.speed
		--uncomment to test the ai score function
		--ai.score = ai.score + 1
	end
	if love.keyboard.isDown("down") then
		ai.y = ai.y + ai.speed
	end
end
