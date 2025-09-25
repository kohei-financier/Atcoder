# 問題
# https://atcoder.jp/contests/abc393/tasks/abc393_a
s1, s2 = gets.split
case s1
when 'fine'
  puts s2 == 'fine' ? 4 : 3
when 'sick'
  puts s2 == 'fine' ? 2 : 1
end