# 問題
# https://atcoder.jp/contests/abc418/tasks/abc418_a
n = gets.to_i
str = gets.chomp
puts str.include?("tea") && str[-3..-1] == "tea" ? "Yes" : "No"