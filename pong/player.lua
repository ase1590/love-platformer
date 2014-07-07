--pong player1 set-up

player = {}
player.x = 20
player.y = 20
player.speed = 3
player.score = 0

function player_draw()
	love.graphics.setColor(255,255,255)
	love.graphics.rectangle("fill", player.x, player.y, 10, 50)
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
