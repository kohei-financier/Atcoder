# 問題
# https://atcoder.jp/contests/abc422/tasks/abc422_b
h, w = gets.split.map(&:to_i)
grid = []
h.times do
  grid << gets.chomp
end

result = true

(0...h).each do |i|
  (0...w).each do |j|
    if grid[i][j] == '#'
      count = 0
      [[i-1, j], [i+1, j], [i, j-1], [i, j+1]].each do |ni, nj|
        if ni >= 0 && ni < h && nj >= 0 && nj < w && grid[ni][nj] == '#'
          count += 1
        end
      end
      if count != 2 && count != 4
        result = false
        break
      end
    end
  end
  break unless result
end

puts result ? "Yes" : "No"