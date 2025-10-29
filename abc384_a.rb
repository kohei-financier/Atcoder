# 問題
# https://atcoder.jp/contests/abc384/tasks/abc384_a
n, c1, c2 = gets.chomp.split(" ").map(&:to_s)
s = gets.chomp.split("").map(&:to_s)
ans = []
s.each { |i|
  if i != c1
    ans << c2
  else
    ans << i
  end
}
puts ans.join("")