# 問題
# https://atcoder.jp/contests/abc416/tasks/abc416_a
n, l, r = gets.split(" ").map(&:to_i)
s = gets.split("").map(&:to_s)
flag = true
s[l-1..r-1].each do |i|
  if i != "o"
    flag = false
  end
end
puts flag == true ? "Yes" : "No"