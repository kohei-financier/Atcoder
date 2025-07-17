# 問題
# https://atcoder.jp/contests/abc414/tasks/abc414_a

n, l, r = gets.split.map(&:to_i)
res = 0
n.times { |i|
  x, y = gets.split.map(&:to_i)
  if l >= x && r <= y
    res += 1
  end
}
puts res