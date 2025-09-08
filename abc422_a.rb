world,stage = gets.chomp.split("-").map(&:to_i)
if world == 8 && stage == 8
    world = 8
    stage = 8
elsif stage == 8
    world += 1
    stage = 1
else
    stage += 1
end
puts "#{world}-#{stage}"