# 問題
# https://atcoder.jp/contests/abc428/tasks/abc428_a
s, a, b, x = gets.split(" ").map(&:to_i)
set = x / (a+b)
if x % (a+b) >= a
  amari = a
else
  amari = x % (a+b)
end

puts s*a*set+s*amari