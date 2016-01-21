class ValueOfString
  def findValue(s)
    vals = s.chars.collect { |c| c.codepoints.to_a[0] - 96 }
    ans = 0
    vals.length.times do |i|
    end
  end
end
