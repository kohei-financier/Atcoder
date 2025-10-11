# 問題
# https://atcoder.jp/contests/abc427/tasks/abc427_b
n = gets.to_i

f = "1"

(n-1).times { |i|
  ary = f.chomp.split("").map(&:to_i)
  f = (f.to_i+ary.sum).to_s
}
puts f.to_i