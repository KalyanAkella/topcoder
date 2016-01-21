class BichromeBoard
  def ableToDraw(rows)
    rows.each_index do |i|
      (0 ... rows[i].length).each do |j|
        next if rows[i][j] == 'W' or rows[i][j] == 'B'
        if adjacent?(rows, i, j, 'W')
          rows[i][j] = 'W'
        elsif adjacent?(rows, i, j, 'B')
          rows[i][j] = 'B'
        else
          return "Impossible"
        end
      end
    end
    return "Possible"
  end

  def adjacent?(rows, i, j, color)
    nr = rows.length
    nc = rows[0].length
    color_code = color.codepoints.to_a[0]
    top = (i > 0 ? rows[i - 1][j] : 'N').codepoints.to_a[0] ^ color_code
    left = (j > 0 ? rows[i][j - 1] : 'N').codepoints.to_a[0] ^ color_code
    bottom = ((i + 1) < nr ? rows[i + 1][j] : 'N').codepoints.to_a[0] ^ color_code 
    right = ((j + 1) < nc ? rows[i][j + 1] : 'N').codepoints.to_a[0] ^ color_code 
    top != 0 && left != 0 && bottom != 0 && right != 0
  end
end

