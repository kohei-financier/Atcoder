# 問題
# https://atcoder.jp/contests/abc393/tasks/abc393_a
takahashi, aoki = gets.split(" ").map(&:to_s)
if takahashi == "sick" && aoki == "fine"
  puts 2
elsif takahashi == "fine" && aoki == "fine"
  puts 4
elsif takahashi == "fine" && aoki == "sick"
  puts 3
elsif takahashi == "sick" && aoki == "sick"
  puts 1
end


s1, s2 = gets.split
case s1
when 'fine'
  puts s2 == 'fine' ? 4 : 3
when 'sick'
  puts s2 == 'fine' ? 2 : 1
end