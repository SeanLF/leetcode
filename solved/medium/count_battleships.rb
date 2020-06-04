# @param {Character[][]} board
# @return {Integer}
def count_battleships(board)
  count = 0
  x_length = board.length
  return 0 if x_length.zero?

  y_length = board[0].length

  (0...x_length).each do |x|
    (0...y_length).each do |y|
      next if board[x][y] == '.'

      next if x.positive? && board[x - 1][y] == 'X'

      next if y.negative? && board[x][y - 1] == 'X'

      count += 1
    end
  end
  count
end
