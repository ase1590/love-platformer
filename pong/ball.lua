ball = {}
ball.x = 350
ball.y = 350
ball.vy = 3
ball.vx = -2


function ball_draw()
	love.graphics.setColor(255,255,255)
	love.graphics.rectangle("fill", ball.x, ball.y, 14, 14)
	end

--ball move
function ball_move()
	--if the ball stays in the window, keep moving it
	if ball.x > 0 and ball.x < 700 - 14 then
		ball.x = ball.x + ball.vx
	end
	--if the ball stays in the window, keep moving it if it stays below 686
	if ball.y >= 0 and ball.y <= 700 - 14 then
		ball.y = ball.y + ball.vy
	end
	--if the ball hits any Y boundaries, reverse direction
	if ball.y >=698 - 14 or ball.y <= 2 then
		ball.vy = - ball.vy
	end
	
	if ball.x <=5 or ball.x >= 698-14 then
		ball.vx = - ball.vx
	end
end
