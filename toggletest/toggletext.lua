--[[
text toggler script

add ' require "toggletext" ' without the single quotes to the top of your main.lua
add toggletext() under your love.draw function

change the togglekey variable inside the single quotes 
to choose the key to toggle with
then enjoy
--]]

togglekey = 'a'

function love.keypressed(key)
   if key == togglekey and showtext == false then
      showtext = true
    elseif key == togglekey and showtext == true then
        showtext = false
		
   end
end



function toggletext()
	if showtext == true then
		love.graphics.print(counter, 300, 100)
	elseif showtext == false then
		love.graphics.print("", 300, 100)
	end
end