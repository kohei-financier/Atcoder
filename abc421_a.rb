# 問題
# https://atcoder.jp/contests/abc421/tasks/abc421_a
n = gets.to_i
ary = Array.new
n.times { ary << gets.chomp }
num, name = gets.chomp.split(" ").map(&:to_s)
puts ary[num.to_i-1] == name ? "Yes" : "No"