# 問題
# https://atcoder.jp/contests/abc391/tasks/abc391_a
direct = gets.chomp

case direct
when "N"
  puts "S"
when "E"
  puts "W"
when "W"
  puts "E"
when "S"
  puts "N"
when "NE"
  puts "SW"
when "NW"
  puts "SE"
when "SE"
  puts "NW"
when "SW"
  puts "NE"
end