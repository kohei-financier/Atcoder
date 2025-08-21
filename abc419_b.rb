# 問題
# https://atcoder.jp/contests/abc419/tasks/abc419_b
q = gets.to_i
bag = []
q.times { |i|
  que = gets.split(" ").map(&:to_i)
  if que[0] == 1
    bag << que[1]
  elsif que[0] == 2
    puts bag.delete_at(bag.index(bag.min))
  end
}