# 問題
# https://atcoder.jp/contests/abc429/tasks/abc429_b
n,m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
sum = a.sum

res = "No"

n.times { |i|
  cue = a.slice(i)
  if m == a.sum-cue
    res = "Yes"
  end
}
puts res
