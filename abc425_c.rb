# 問題
# https://atcoder.jp/contests/abc425/tasks/abc425_c
n,q = gets.split.map(&:to_i)
ary = gets.split.map(&:to_i)
sum_ary = Array.new(n+1, 0)
n.times { |i| sum_ary[i+1] = sum_ary[i] + ary[i] }
# p sum_ary

bar = 0

q.times { |j|
  query = gets.split.map(&:to_i)
  if query[0] == 1
    bar = (bar+query[1]) % n
    # puts "bar:#{bar}"
    # puts "================="
  else
    l = (bar+query[1]-1) % n
    r = (bar+query[2]-1) % n
    # puts "l:#{l}/ r:#{r}"
    if r < l 
      puts sum_ary[n] - sum_ary[l] + sum_ary[r+1] - sum_ary[0]
    else
      puts sum_ary[r+1] - sum_ary[l]
    end
  end
  # puts "================="
}
