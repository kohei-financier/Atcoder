# 問題
# https://atcoder.jp/contests/abc430/tasks/abc430_a
a, b, c, d = gets.split(" ").map(&:to_i)
if a <= c && b <= d
  puts "No"
elsif a > c
  puts "No"
else
  puts "Yes"
end