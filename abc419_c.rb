# 問題
# 
n = gets.to_i
start = Array.new(n) { gets.split.map(&:to_i) }
x_min = start[0][0]
x_max = start[0][0]
y_min = start[0][1]
y_max = start[0][1]
start.each do |i|
  x_min = i[0] if x_min > i[0]
  x_max = i[0] if x_max < i[0]
  y_min = i[1] if y_min > i[1]
  y_max = i[1] if y_max < i[1]
end
x = (x_max - x_min + 1) / 2
y = (y_max - y_min + 1) / 2
puts x > y ? x : y