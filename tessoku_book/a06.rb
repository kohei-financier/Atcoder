n, q = gets.split.map(&:to_i)
ary = gets.split.map(&:to_i)

# これだとTLEになってしまう・・・。
# q.times { |i|
#   l, r = gets.split.map(&:to_i)
#   if l == 1
#     puts ary[..r-1].sum
#   else
#     puts ary[..r-1].sum - ary[..l-2].sum
#   end
# }

# 合計されたsum配列を用意する
sum = Array.new(n+1, 0)

# sum配列には、一個前を取り出して足す計算をしておく。
(1..n).each { |i|
  sum[i] = sum[i-1] + ary[i-1]
}

q.times { |j|
  l, r = gets.split.map(&:to_i)
  puts sum[r] - sum[l-1]
}