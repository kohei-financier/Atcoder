# 問題
# https://atcoder.jp/contests/abc414/tasks/abc414_b

n = gets.to_i
ary = []
res = []
length = 0
n.times { |i|
  c, l = gets.split
  ary << [c,l]
  length += l.to_i
}
if length > 100
  puts "Too Long"
else
  ary.each { |str, num|
    num.to_i.times { res << str }
  }
end
puts res.join("")