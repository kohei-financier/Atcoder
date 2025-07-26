# 問題
# https://atcoder.jp/contests/abc416/tasks/abc416_b
s = gets.chomp.split("").map(&:to_s)
ans = []
s.size.times do |i|
  if s[i] == "#"
    ans << "#"
  elsif i == 0 || s[i-1] == "#"
    ans << "o"
  else
    ans << "."
  end
end
puts ans.join