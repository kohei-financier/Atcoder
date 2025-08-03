# 問題
# https://atcoder.jp/contests/abc417/tasks/abc417_a
n, a ,b = gets.split.map(&:to_i)
s = gets.chomp.split("").map(&:to_s)
puts s[a..n-b-1].join