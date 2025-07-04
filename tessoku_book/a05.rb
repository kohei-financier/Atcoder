n, k = gets.split.map(&:to_i)
res = 0
(1..n).each { |x|
  (1..n).each { |y|
    z = k - x - y
    res += 1 if z > 0 && z <= n
  }
}
puts res