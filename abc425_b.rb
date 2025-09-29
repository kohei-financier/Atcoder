# 問題
# https://atcoder.jp/contests/abc425/tasks/abc425_b
n = gets.chomp.to_i
arr = gets.chomp.split(' ').map(&:to_i)
map = Hash.new(0)
n.times do |i|
  map[arr[i]] += 1 if arr[i] != -1
end
# p map
val = []
(1..n).each do |i|
  if map[i] > 1
    puts "No"
    exit
  end
  if map[i] == 0
    val << i
  end
end

puts "Yes"
n.times do |i|
  arr[i] = val.shift if arr[i] == -1
end
puts arr.join(" ")
# p map
