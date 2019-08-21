def collatz_sum(max)
  (2..max).map do |i|
    [
      i,
      if (i.even?)
        i / 2
      else
        3 * i + 1
      end
    ]
  end.reverse + [ [ 1 ] ]
end