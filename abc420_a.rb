# 問題
# https://atcoder.jp/contests/abc420/tasks/abc420_a
x, y = gets.split(" ").map(&:to_i)
puts x + y >= 13 ? x+y-12 : x+y 