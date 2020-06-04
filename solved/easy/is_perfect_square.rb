# @param {Integer} num
# @return {Boolean}
def perfect_square?(num)
  sqrt = num**0.5
  sqrt == sqrt.to_i
end

def main
  test_cases = [
    [16, true],
    [17, false],
    [9, true],
  ]

  test_cases.each do |test, expected_result|
    result = perfect_square?(test)
    puts result == expected_result ? '.' : "FAIL:\tgot:#{result}\texpected:#{expected_result}"
  end
end

main
