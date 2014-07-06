require "player"
require "map"

function love.load()
	medium = love.graphics.newFont(45)

end



function love.update()
player_move()
map_collide()
end





function love.draw()
	player_draw()


end
