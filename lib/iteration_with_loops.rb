def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  result = []
  count = 0
  while count < src.count do
    inner_count = 0
    temp = src[count][0]
    while inner_count < src[count].count do
      if src[count][inner_count] < temp
        temp = src[count][inner_count]
      end
      inner_count += 1
    end
    result << temp
    count += 1
  end 
  result
end