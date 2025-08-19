# 問題
# https://atcoder.jp/contests/abc418/tasks/abc418_c

n, q = gets.split.map(&:to_i)
flavor = gets.split.map(&:to_i)

sorted_flavor = flavor.sort
# p sorted_flavor #=> [1, 4, 4, 8]

sum_sorted_flavor = [0]
sorted_flavor.each { |i|
  sum_sorted_flavor << sum_sorted_flavor[-1] + i
}
# p sum_sorted_flavor #=> [0, 1, 5, 9, 17]

q.times {
  difficulty = gets.to_i
  # p "difficulty = #{difficulty}"
  
  if sorted_flavor.last < difficulty 
    puts -1
    # puts "==================="
    next
  end
  
  i = sorted_flavor.bsearch_index { |x| x >= difficulty -1 } || n
  # p "i = #{i}"
  
  ans = (n - i) * (difficulty -1)
  # p "ans = #{ans}"
  ans += sum_sorted_flavor[i]
  # p "ans = #{ans}"
  puts ans + 1
  # puts "==================="
}
