# 問題
# https://atcoder.jp/contests/abc427/tasks/abc427_a
s = gets.chomp.split("").map(&:to_s)
size = s.size
ans = []
s.each_with_index { |i, ind|
  if ind != size/2
    ans << i
  end
}
puts ans.join("")