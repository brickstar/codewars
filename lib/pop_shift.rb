class PopShift
  def popshift(string)
    if string.length.odd?
      first = string.slice(string.slice(((string.length / 2) + 1)..string.length)).reverse
      second = string.slice(0..string.length/2)
      second = second.chars
      third = second.pop
      [first, second.join, third]
    else
      second = string[0, string.length/2]
      first = string.chars
      first = first[-(first.length/2), first.length/2].join.reverse
      [first, second, ""]
    end
  end
end
