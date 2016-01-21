class CountryGroup
  def solve(a)
    n = 0
    i = 0
    while i < a.length do
      a[i].times do |j|
        return -1 if a[i+j] != a[i]
      end
      n = n + 1
      i = i + a[i]
    end
    n
  end
end

