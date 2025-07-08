H, W = gets.chomp.split(" ").map(&:to_i)

x = Array.new(H) { gets.chomp.split.map(&:to_i)}

# 累積和の二次元配列を作成（H+1 x W+1のテーブル）
prefix_sums = Array.new(H+1) { Array.new(W+1,0) }

(1..H).each do |i|
  (1..W).each do |j|
    prefix_sums[i][j] = x[i-1][j-1] + prefix_sums[i-1][j] + prefix_sums[i][j-1] - prefix_sums[i-1][j-1]
  end
end


# 各クエリの処理
Q = gets.chomp.to_i

Q.times do
  a, b, c, d = gets.chomp.split.map(&:to_i)
  ans = prefix_sums[c][d] - prefix_sums[c][b-1] - prefix_sums[a-1][d] + prefix_sums[a-1][b-1]
  puts ans
end
