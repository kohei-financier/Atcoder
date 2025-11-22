# 問題
# https://atcoder.jp/contests/abc433/tasks/abc433_a
X, Y, Z = gets.split.map(&:to_i)
flg = false
(0..100).each { |i|
  if X+i == (Y+i)*Z
    flg = true
    break
  end
}
puts flg ? "Yes" : "No"