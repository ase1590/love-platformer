ball = {}
ball.x = 350
ball.y = 350
ball.speed = 3
ball.score = 0


function ball_draw()
	love.graphics.setColor(255,255,255)
	love.graphics.rectangle("fill", ball.x, ball.y, 14, 14)
	end
