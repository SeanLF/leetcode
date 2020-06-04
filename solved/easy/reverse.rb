# @param {Integer} x
# @return {Integer}
def reverse(x)
    reversed = x.to_s.scan(/\d/).reverse.join.to_i * (x > 0 ? 1 : -1)
    if -2147483648 <= reversed and reversed < 2147483648
        return reversed
    else
        return 0
    end
end
