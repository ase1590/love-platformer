function map_collide()
	if player.x < 0 then
		player.x = 0
	end
	if player.x > 700 - 64 then
		player.x = 700 - 64
	end
	if player.y > 700 - 64 then
		player.y = 700 - 64
	end
	if player.y < 0 then
		player.y = 0
	end


end
