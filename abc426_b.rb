# 問題
# https://atcoder.jp/contests/abc426/tasks/abc426_b
s = gets.chomp.split("").map(&:to_s)
h = s.tally.invert
puts h[1]
