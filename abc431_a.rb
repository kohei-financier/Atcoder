# 問題
# https://atcoder.jp/contests/abc431/tasks/abc431_a
h, b = gets.split.map(&:to_i)
if h <= b
  puts 0
else
  puts h-b
end