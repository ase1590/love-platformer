ball = {}
ball.x = 350
ball.y = 30
-- rf= random factor, which is used to describe how much the ball vy randoms
rf = 4


--ball.vy = 1
--ball.vx = -4

ball.vx = love.math.random( 3, 8 )  --3-8
ball.vy = love.math.random( 1, 3 ) -- 1-3


function ball_draw()
	love.graphics.setColor(255,255,255)
	love.graphics.rectangle("fill", ball.x, ball.y, 14, 14)
end

--ball move
function ball_move()
	--if the ball stays in the X axis, keep moving it.
	if ball.x > 0 and ball.x < 700 - 14 then
		ball.x = ball.x + ball.vx
	end
	--if the ball stays in the Y axis, keep moving it.
	if ball.y >= 0 and ball.y <= 700 - 14 then
		ball.y = ball.y + ball.vy
	end
	--if the ball hits any Y boundaries, reverse direction
	if ball.y <= 2 then
		ball.y = 3
		ball.vy = - ball.vy --love.math.random( 1, 3 )                    --ball.vy
		love.audio.play(boop) 
	end 
		--part 2 of Y axis error checking 
	if ball.y >=698 - 14 
	then ball.y = 697-14 ball.vy = - love.math.random( 1, 3 ) 
		love.audio.play(boop) 
	end
	--switch the X direction of the ball if it makes screen edge contact
	if ball.x >= 696-14 then
		ball.x = 696-13
		ball.vx = -ball.vx -1             --ball.vx add error check for max velocity
		ball.vy = love.math.random( -rf, rf )
	if ball.vy == 0 then
				ball.vy = - love.math.random( -rf, rf )
	end
		love.audio.play(boop)
	end
-- check to see if ball hits ai, then bounce if it does, and move 1 pixel in front to errorcheck
	if ball.x + 14  >= ai.x
		and ball.y + 14 >= ai.y
		and ball.y <= ai.y + ai.scale_y
		then ball.x = ai.x - 15
		ball.vx = - ball.vx
		ball.vy = love.math.random( -rf, rf )
		love.audio.play(boop)
	end

--Define player & ball interaction

	--if the ball is on the same X axis as the player, and is between two Y ranges, bounce
	--also errorcheck to teleport ball in front of paddle if stuck.
	if ball.x <= player.x + player.scale_x 
	and ball.y + 14 >= player.y 
	and ball.y <= player.y + player.scale_y then
		ball.x =player.x + player.scale_x + 1
		ball.vx = - ball.vx +1 --add error checking for velocity
		ball.vy = love.math.random(-rf, rf)
		if ball.vx >= 9 then 
			ball.vx = love.math.random(2,5)
		end
		love.audio.play(boop)
	end
--if the ball hits the player edge, respawn in 1 second in the center
	if ball.x <= 20 then
		love.timer.sleep(1)
		ball.x = 350 
		ball.vx = -2
		ball.y = 30
		ball.vy = 1
		player.x = 20
		player.y = 20
		ai.score = ai.score + 1
	end
-- if the ball hits the ai edge, respawn in 1 second in the center
	if ball.x >= 680 then
		love.timer.sleep(1)
		ball.x = 250
		ball.vx = 2
		ball.y = 30
		ball.vy = 1
		player.score = player.score + 1
	end

end
