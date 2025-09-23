# 問題
# https://atcoder.jp/contests/abc424/tasks/abc424_b
n,m,k = gets.split(" ").map(&:to_i)
ary = Array.new(n) { Array.new(m,0) }
res = []
k.times { |i|
  a, b = gets.split(" ").map(&:to_i)
  ary[a-1][b-1] = 1
  n.times { |j|
    if Array.new(m,1) == ary[j]
      res << j+1
    end
  }
  # p ary
}
# p ary
puts res.uniq.join(" ")