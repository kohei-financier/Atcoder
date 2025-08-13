# 問題
# https://atcoder.jp/contests/abc418/tasks/abc418_b

# 標準入力：attitude
str = gets.chomp
words_num = str.length
# p words_num #=> 8

ans = 0

words_num.times { |l|
  next if str[l] != "t"
  # p i #=> 1,2,4
  ((l+2)..words_num).each { |r|
    next if str[r] != "t"
    # p l #=> 1,2
    # p r #=> 4,4
    t_count = 0
    (l..r).each { |t|
      t_count += 1 if str[t] == "t"
    }
    ans = [ans, (t_count-2).to_f / ((r-l+1)-2)].max
    # p ans #=> [0.5,0.0]
  }
}
puts ans