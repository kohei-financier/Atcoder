# bit全探索

# numbersからいくつか取り出して、合計値がkになる組み合わせを探す。
numbers = [3, 8, 4, 7]
k = 11
n = numbers.length

# flagをfoundという名前に今回はする。
found = false

# 1 << n は、左ビット演算子。
(0...(1 << n)).each do |i|

  # 結果を入れるcurrent_sumを、一旦、0にする。
  current_sum = 0

  # i（「0001」や「1101」⋯）のj桁目が「１」かどうかをチェックする
  # 「current_sum += numbers[j]」の箇所で、取り出した値の合計をしている！
  (0...n).each do |j|
    if (i >> j) & 1 == 1
      current_sum += numbers[j]
    end
  end

  # kと一緒か判定する部分
  if current_sum == k
    found = true
    break
  end
end

puts found ? "Yes" : "No"
puts 1 << 5