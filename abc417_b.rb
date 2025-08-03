# 問題
# https://atcoder.jp/contests/abc417/tasks/abc417_b
n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_s)
b = gets.split.map(&:to_s)

b.each { |i|
  if a.index(i) != nil
    a.delete_at(a.index(i))
  end
}
puts a.join(" ")