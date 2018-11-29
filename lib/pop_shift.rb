require 'pry'
class PopShift
  def popshift(string)
    return [string, "", ""] if string.length == 1
    if string.length.odd?
      first = string.slice(string.slice((string.length / 2) + 1..string.length)).reverse
      second = string.slice(0..string.length /  2)
      second = second.chars
      third = second.pop
      [first, second.join, third]
    else
      second = string[0, string.length / 2]
      first = string.chars
      first = first[-(first.length / 2), first.length/2].join.reverse
      [first, second, ""]
    end
  end
end

__END__
You will be given a string.

You need to return an array of three strings by gradually pulling apart the string.

You should repeat the following steps until the string length is 1:

a) remove the final character from the original string, add to solution string 1. b) remove the first character from the original string, add to solution string 2.

The final solution string value is made up of the remaining character from the original string, once originalstring.length == 1.

Example:

"exampletesthere" becomes: ["erehtse","example","t"]

The Kata title gives a hint of one technique to solve.
