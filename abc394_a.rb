# 問題
# https://atcoder.jp/contests/abc394/tasks/abc394_a
s = gets.chomp.split("").map(&:to_i)
ans = []
s.each { |x| ans << x if x == 2 }
puts ans.join