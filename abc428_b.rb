# 問題
# https://atcoder.jp/contests/abc428/tasks/abc428_b
n,k = gets.split.map(&:to_i)
s = gets.chomp.chars
s = (n-k+1).times.map{|i|s[i,k].join}.tally
max_words = s.values.max
puts max_words
puts s.select{|_,v|v==max_words}.keys.sort.join(" ")