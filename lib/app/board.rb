class Board
  attr_reader :grid

  def initialize
    @grid = {}
    (1..9).each { |i| @grid[i] = BoardCase.new }
  end

  def display
    puts "     1     2    3"
    puts "   A #{@grid[1].value} || #{@grid[2].value} || #{@grid[3].value} "
    puts "    ====+====+===="
    puts "   B #{@grid[4].value} || #{@grid[5].value} || #{@grid[6].value} "
    puts "    ====+====+===="
    puts "   C #{@grid[7].value} || #{@grid[8].value} || #{@grid[9].value} "
  end
end
