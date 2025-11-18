# 問題
# https://atcoder.jp/contests/abc432/tasks/abc432_b
ary = gets.chomp.split("").map(&:to_i)
per = ary.permutation(ary.count).to_a
ary2 = []
per.each { |i|
  if i[0] != 0
    ary2 << i.join("").to_i
  end
}
puts ary2.min