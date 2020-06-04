# @param {Integer} num
# @return {Integer}
def number_of_steps(num)
  return 0 if num.zero?

  if num.even?
    number_of_steps(num / 2) + 1
  else
    number_of_steps(num - 1) + 1
  end
end
