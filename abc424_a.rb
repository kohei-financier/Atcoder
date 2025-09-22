# 問題
# https://atcoder.jp/contests/abc424/tasks/abc424_a
a,b,c = gets.split(" ").map(&:to_i)
if a == b || b == c || a == c
  puts "Yes"
else
  puts "No"
end