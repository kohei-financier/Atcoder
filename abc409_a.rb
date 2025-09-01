# 問題
# https://atcoder.jp/contests/abc409/tasks/abc409_a
n = gets.to_i
t = gets.chomp.split("").map(&:to_s)
a = gets.chomp.split("").map(&:to_s)
ans = false
n.times do |i|
  if t[i] == "o" && a[i] == "o"
    ans = true
    break
  end
end
puts ans == true ? "Yes" : "No"