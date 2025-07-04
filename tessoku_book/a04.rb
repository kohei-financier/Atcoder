n = gets.to_i
# res = []

# while n > 0
#   res << n % 2
#   n /= 2
#   p res
# end
# puts res.join.reverse.rjust(10, "0")

# puts n.to_s(2).rjust(10, "0")

puts sprintf("%010b", n)

