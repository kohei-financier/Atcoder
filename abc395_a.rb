# 問題
# https://atcoder.jp/contests/abc395/tasks/abc395_a

count = gets.to_i
ary = gets.chomp.split(" ").map(&:to_i)
result = []
(count-1).times do |i|
  if ary[i] < ary[i+1]
    result << "Yes"
  else
    result << "No"
  end
end

if result.all?("Yes") == true
  puts "Yes"
else
  puts "No"
end
