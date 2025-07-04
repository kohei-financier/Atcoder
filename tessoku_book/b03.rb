n = gets.to_i
ary = gets.split.map(&:to_i)
res = false

ary.combination(3).to_a.each { |a1, a2, a3|
  if a1+a2+a3 == 1000
    res = true
    break
  end
}
puts res == true ? "Yes" : "No"
