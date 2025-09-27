# 問題
# https://atcoder.jp/contests/abc425/tasks/abc425_a
n = gets.to_i
res = []
(1..n).each { |i|
  if i.odd?
    res << (-1**i)*i**3
  else
    res << i**3
  end
}
puts res.sum