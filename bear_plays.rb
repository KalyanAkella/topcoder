class BearPlays
  attr_reader :memo

  def initialize
    @memo = Array.new(1500) { Array.new(1500, false) }
  end

  def pileSize(a, b, k)
    k.times do
      if a <= b
        b = b - a
        a = a + a
      else
        a = a - b
        b = b + b
      end
      p "a: #{a}, b: #{b}"
    end
    a < b ? a : b
  end

  def memoize(t)
    return if @memo[t[0]][t[1]]
    @memo[t[0]][t[1]] = true
    3.times do |i|
      3.times do |j|
        if t[i] < t[j]
          new_t = [2 * t[i], t[j] - t[i], t[3-i-j]]
          memoize(new_t)
        end
      end
    end
  end

  def equalPiles(a, b, c)
    s = a + b + c
    if s % 3 == 0
      memoize([a,b,c])
      return "possible" if @memo[s/3][s/3]
    end
    return "impossible"
  end
end
