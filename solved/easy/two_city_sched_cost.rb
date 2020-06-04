# frozen_string_literal: true

# @param {Integer[][]} costs
# @return {Integer}
def two_city_sched_cost(costs)
  return 0 if costs.length.negative? || costs.length > 100 || costs.length.odd?

  n = costs.length / 2
  counts = { a: 0, b: 0 }
  total_cost = 0

  # so that we don't get stuck with high values later
  costs.sort_by { |c| -(c[0] - c[1]).abs }.each do |cost_a, cost_b|
    if cost_a < cost_b
      key, cost = counts[:a] < n ? [:a, cost_a] : [:b, cost_b]
    else
      key, cost = counts[:b] < n ? [:b, cost_b] : [:a, cost_a]
    end
    counts[key] += 1
    total_cost += cost
  end
end

def main
  test_cases = [
    [[[10, 20], [30, 200], [400, 50], [30, 20]], 110],
    [[[259, 770], [448, 54], [926, 667], [184, 139], [840, 118], [577, 469]], 1859]
  ]

  test_cases.each do |test, expected_result|
    result = two_city_sched_cost(test)
    puts result == expected_result ? '.' : "FAIL:\tgot:#{result}\texpected:#{expected_result}"
  end
end

main
