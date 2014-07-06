ball = {}
ball.x = 350
ball.y = 350
ball.vy = 1
ball.vx = 1


function ball_draw()
	love.graphics.setColor(255,255,255)
	love.graphics.rectangle("fill", ball.x, ball.y, 14, 14)
	end


function ball_move()
	if ball.x > 0 and ball.x < 700 - 14 then
		ball.x = ball.x + ball.vx
	end
	
	if ball.y >0 and ball.y < 700 - 14 then
		ball.y = ball.y + ball.vy
	end
end
