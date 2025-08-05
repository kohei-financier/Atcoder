# 問題
# https://atcoder.jp/contests/abc415/tasks/abc415_c

n = gets.to_i
aa = gets.chomp.split.map(&:to_i)

adds = Array.new(10**5 * 4 + 1, 0)
subts = Array.new(10**5 * 4 + 1, 0)

aa.each_with_index do |a, i|
  adds[i + 1 + a] += 1
  subts[i + 1 - a] += 1 if i + 1 - a > 1
end
puts n.succ.times.map { |i| adds[i] * subts[i] } .sum
