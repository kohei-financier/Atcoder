# 問題
# https://atcoder.jp/contests/abc421/tasks/abc421_c
n = gets.to_i
s = gets.chomp

j = ans1 = ans2 = 0

n.times do |i|
  j += 1 while s[j] != 'A'

  ans1 += (2 * i - j).abs
  ans2 += (2 * i + 1 - j).abs
  j += 1
end

puts [ans1, ans2].min