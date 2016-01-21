class CorruptedMessage
  def reconstructMessage(s, k)
    ('a'..'z').each do |l|
      n = 0
      c = s.clone
      c.length.times do |i|
        if c[i] != l
          c[i] = l
          n = n + 1
        end
      end
      return c if n == k
    end
  end
end

