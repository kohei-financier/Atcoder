# 問題
# https://atcoder.jp/contests/abc415/tasks/abc415_b

s = gets.chomp.split("").map(&:to_s)
ind = []
s.each_with_index do |k, i|
  if k == "#"
    ind << i+1
  end
end
ind.each_slice(2) do |a, b|
  puts "#{a},#{b}"
end