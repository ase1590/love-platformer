require "player"
require "map"
require "ball"
require "toggletext"

function love.load()

-- set up some fonts
	smaller = love.graphics.newFont(12)
	small = love.graphics.newFont(25)
	medium = love.graphics.newFont(45)
	large = love.graphics.newFont(72)
	
	--add music
	boop = love.audio.newSource("boop.wav")
	love.audio.setVolume(0.2)


end



function love.update()
player_move()
map_collide()
ball_move()
end



function love.draw()
	player_draw()
	ball_draw()
	love.graphics.setFont(small)
	love.graphics.setColor(255,255,255, 200)
	love.graphics.print("PONG", 300, 10)
	love.graphics.print(player.score, 200, 10)
-- debug showlist, removeme after feature complete
	showlist()
end
