# 問題
# https://atcoder.jp/contests/abc409/tasks/abc409_b
n = gets.to_i
ary = gets.split(" ").map(&:to_i)
ans = 0
(0..n).each do |i|
  count = ary.count { |j| j >= i }
  ans = i if count >= i
end
puts ans