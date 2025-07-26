# 問題
# https://atcoder.jp/contests/abc416/tasks/abc416_c
n, k, x = gets.split(" ").map(&:to_i)
ary = []
n.times do |i|
  ary << gets.chomp
end
ans = []
(ary.repeated_permutation(k).to_a).each do |i|
  ans << i.join
end
puts ans.sort[x-1]
