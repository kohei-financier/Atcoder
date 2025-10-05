# 問題
# 
s = gets.chomp.split("").map(&:to_s)
h = s.tally.invert
puts h[1]
