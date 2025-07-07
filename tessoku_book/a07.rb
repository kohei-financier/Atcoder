d = gets.to_i
n = gets.to_i
b = Array.new(d+1, 0)
n.times do
  l, r = gets.split.map(&:to_i)
  # 出席する日を＋１する。
  b[l-1] += 1
  b[r] -= 1
end
res = 0
(0...d).each { |i|
  res += b[i]
  puts res
}