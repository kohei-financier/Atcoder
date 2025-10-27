# 問題
# https://atcoder.jp/contests/abc429/tasks/abc429_a
n,m = gets.split.map(&:to_i)
n.times { |i|
  if i+1 <= m
    puts "OK"
  else
    puts "Too Many Requests"
  end
}