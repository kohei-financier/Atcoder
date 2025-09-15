N = gets.to_i
L = gets.split.map(&:to_i)

# 左側から到達できる部屋
reachable_from_left = Array.new(N+1, false)
reachable_from_left[0] = true
(1..N).each do |i|
  if L[i-1] == 0 && reachable_from_left[i-1]
    reachable_from_left[i] = true
  end
end

# 右側から到達できる部屋
reachable_from_right = Array.new(N+1, false)
reachable_from_right[N] = true
(N-1).downto(0) do |i|
  if L[i] == 0 && reachable_from_right[i+1]
    reachable_from_right[i] = true
  end
end

# 両方から到達できない部屋を数える
ans = 0
(0..N).each do |i|
  unless reachable_from_left[i] || reachable_from_right[i]
    ans += 1
  end
end

puts ans
