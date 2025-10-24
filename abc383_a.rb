# 問題
# https://atcoder.jp/contests/abc383/tasks/abc383_a
n = gets.to_i

sum_water = 0
last_hour = 0

n.times {
  hour, water = gets.split(" ").map(&:to_i)
  minus_hour = hour - last_hour
  sum_water = sum_water - minus_hour
  if sum_water < 0
    sum_water = 0
  end
  sum_water += water
  last_hour = hour
}

puts sum_water