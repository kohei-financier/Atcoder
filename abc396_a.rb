# 問題
# https://atcoder.jp/contests/abc396/tasks/abc396_a

n = gets.to_i
ary = gets.chomp.split(" ").map(&:to_i)
tag = "No"
n.times do |i|
  if ary[i] == ary[i+1] && ary[i+1] == ary[i+2]
    tag = "Yes"
    break
  end
end
puts tag
