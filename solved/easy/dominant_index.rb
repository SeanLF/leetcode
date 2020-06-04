# @param {Integer[]} nums
# @return {Integer}
def dominant_index(nums)
  length = nums.length
  return -1 if length < 1 || length > 50
  return 0 if length == 1

  max, max_idx, second_max, second_max_idx = nums[0], 0, -1, -1
  nums.each_with_index do |num, i|
    next if i.zero?

    if second_max < num
      if max < num
        second_max = max
        second_max_idx = max_idx
        max = num
        max_idx = i
      else
        second_max = num
        second_max_idx = i
      end
    end
  end
  max >= 2 * second_max ? max_idx : -1
end

def main
  test_cases = [
    [[0, 0, 0, 1], 3],
    [[1, 2, 3, 4], -1],
    [[1], 0],
    [[1, 0], 0]
  ]

  test_cases.each do |test, expected_result|
    print(dominant_index(test) == expected_result ? '.' : 'F')
  end
end

main
