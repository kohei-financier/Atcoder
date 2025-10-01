n = gets.to_i

grid = []
n.times {
  grid << gets.split.map(&:to_i)
}
grid_sum = grid.flatten.sum

# 何段あるか？
steps = n/2 +1

ary = []
sum = 0
if n.odd?
  (1..n).each {|i| ary << i if i.even?}
  ary.sort!.reverse!
  ary.each_with_index { |j, ind|
    sum += j*(ind+1)*4
  }
  sum += steps
else
  (1..n).each {|i| ary << i if i.odd?}
  ary.sort!.reverse!
  ary.each_with_index { |j, ind|
    sum += j*(ind+1)*4
  }
end

puts grid_sum - sum