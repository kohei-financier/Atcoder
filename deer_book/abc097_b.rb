# 問題
# https://atcoder.jp/contests/abc097/tasks/abc097_b
X = gets.to_i
ans = 1
(2..X).each { |i|
  x = i*i
  while x <= X
    ans = [ans, x].max
    x *= i
  end
}
puts ans