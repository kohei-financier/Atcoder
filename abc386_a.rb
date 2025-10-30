# 問題
# https://atcoder.jp/contests/abc386/tasks/abc386_a
puts gets.split(" ").map(&:to_i).tally.values.count == 2 ? "Yes" : "No"