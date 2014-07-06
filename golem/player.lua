--whip up some player related variables
player = {}
player.x = 20
player.y = 20
player.speed = 3
player.health = 20
player.damage = 2
player.sprite = love.graphics.newImage("golem.png")



--draw the player
function player_draw()
	love.graphics.setColor(255,255,255)
	love.graphics.draw(player.sprite, player.x, player.y)
end


--move the player
function player_move()
	if love.keyboard.isDown("up") then
		player.y = player.y - player.speed
	end
	if love.keyboard.isDown("down") then
		player.y = player.y + player.speed
	end
	if love.keyboard.isDown("left") then
		player.x = player.x - player.speed
	end
	if love.keyboard.isDown("right") then
		player.x = player.x + player.speed
	end
end
