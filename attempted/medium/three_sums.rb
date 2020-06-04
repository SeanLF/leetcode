# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  # results = nums.combination(3).select { |c| c.sum.zero? }
  # solution_set = {}
  # results.each { |r| solution_set[str(r.sort)] }
  solution_set = {}
  (0...nums.length).each do |i|
    ((i + 1)...nums.length).each do |j|
      ((j + 1)...nums.length).each do |k|
        to_add = [nums[i], nums[j], nums[k]]
        to_add_key = to_add.sort.to_s
        solution_set[to_add_key] = to_add if to_add.sum.zero? && !solution_set.keys.include?(to_add_key)
      end
    end
  end
  print solution_set.values
end

def main
  test_cases = [
    [[-1, 0, 1, 2, -1, -4], [[-1, 0, 1], [-1, -1, 2]]]
  ]

  test_cases.each do |test, expected_result|
    print(three_sum(test) == expected_result ? '.' : 'F')
  end
end

main
