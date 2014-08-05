function map_collide()
	if player.y > 700 - 60 then
		player.y = 700 -60
	end
	if player.y < 10 then
		player.y = 10
	end


end


function ball_collide()
	if ball.y > 700 - 14 then
		ball.y = 700 -14
	end
	if ball.y < 1 then
		ball.y = 1
	end


end

function ai_collide()
	if ai.y > 700 - 60 then
		ai.y = 700 -60
	end
	if ai.y < 10 then
		ai.y = 10
	end


end