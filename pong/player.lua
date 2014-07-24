--pong player1 set-up

-- according to IRC player = { x = 1, y = 2, scale = { x = 3, y = 4 } } -- player.scale.y

player = {}
player.x = 20
player.y = 20
player.scale_x = 10
player.scale_y = 50
player.speed = 6
player.score = 0

function player_draw()
	love.graphics.setColor(255,255,255)
	love.graphics.rectangle("fill", player.x, player.y, player.scale_x, player.scale_y)
end

function player_move()
	if love.keyboard.isDown("up") then
		player.y = player.y - player.speed
		--uncomment to test the player score function
		--player.score = player.score + 1
	end
	if love.keyboard.isDown("down") then
		player.y = player.y + player.speed
	end
end
