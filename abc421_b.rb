# 問題
# https://atcoder.jp/contests/abc421/tasks/abc421_b
x, y = gets.split(" ").map(&:to_i)
num = []
9.times { |i|
  num = (x.to_i + y.to_i).to_s.split("").map(&:to_i)
  x = y
  y = num.reverse.join("")
}
puts x.to_i