# 問題
# https://atcoder.jp/contests/abc415/tasks/abc415_a

n = gets.to_i
ary = gets.split.map(&:to_i)
x = gets.to_i
puts ary.include?(x) ? "Yes" :"No"