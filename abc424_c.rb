# 問題
# https://atcoder.jp/contests/abc424/tasks/abc424_c

n = gets.to_i

g = Array.new(n + 1) { [] }

1.upto(n) do |i|
  a, b = gets.split.map(&:to_i)
  g[a] << i
  g[b] << i
end

@visited = Array.new(n + 1, false)
@visited[0] = true

def dfs(v, graph)
  @visited[v] = true
  graph[v].each do |next_v|
    dfs(next_v, graph) unless @visited[next_v]
  end
end

dfs(0, g)

puts @visited.count(true) - 1