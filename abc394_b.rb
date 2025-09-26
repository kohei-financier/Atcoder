# 問題
# https://atcoder.jp/contests/abc394/tasks/abc394_b
n = gets.to_i
h = Hash.new
n.times {
  key = gets.chomp
  h[key] = key.length
}
h = h.sort_by {|k,v| v}
ans = []
h.each {|m, n|
  ans << m
}
puts ans.join