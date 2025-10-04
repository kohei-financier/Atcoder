# 問題
# https://atcoder.jp/contests/abc426/tasks/abc426_c
n, q = gets.split.map(&:to_i)

version = (1..n).to_a
p version

puts "================="

q.times {
  x, y = gets.split.map(&:to_i)
  puts "今のversion:#{version}"
  puts "x:#{x}"
  puts "y:#{y}"
  
  puts version.bsearch_index{|i| i >= x}
  
  version.each_with_index { |j, ind|
    if j <= x
      version[ind] = y 
    end
  }
  
  puts "================="
}

