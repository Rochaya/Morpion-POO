class Player
  attr_reader :name, :symbol

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end
end

class BoardCase
  attr_accessor :value

  def initialize
    @value = " "
  end
end

class Board
  attr_reader :grid

  def initialize
    @grid = {}
    (1..9).each { |i| @grid[i] = BoardCase.new }
  end

  def display
    puts " #{@grid[1].value} || #{@grid[2].value} || #{@grid[3].value} "
    puts "---+---+---"
    puts " #{@grid[4].value} || #{@grid[5].value} || #{@grid[6].value} "
    puts "---+---+---"
    puts " #{@grid[7].value} || #{@grid[8].value} || #{@grid[9].value} "
  end
end

class Show
  def initialize(game)
    @game = game
  end

  def game_title
    puts "====================================="
    puts "Jouons une partie de Tic Tac Toe!!!"
    puts "====================================="
  end

  def show_board
    @game.board.display
  end

  def prompt_player(player)
    puts "#{player.name}, please enter a number between 1 and 9 to place your symbol on the board."
  end

  def congratulate_winner(winner)
    puts "Bravo #{winner.name}! Tu as gagné !"
  end

  def declare_tie
    puts "It's a tie!"
    system "cls"
  end
end

class Game
  attr_reader :board, :players

  def initialize
    @board = Board.new
    player1_name = gets.chomp
    player2_name = gets.chomp
    @players = [Player.new(player1_name, "X"), Player.new(player2_name, "O")]
    @current_player = @players[0]
  end

  def play
    @show = Show.new(self)
    @show.game_title
    @board.display
    while !game_over?
      play_turn
    end
    if winner
      @show.congratulate_winner(winner)
    else
      @show.declare_tie
    end
  end

  private

  def play_turn
    @show.prompt_player(@current_player)
    position = gets.chomp.to_i
    if valid_move?(position)
      make_move(position)
      @board.display
      switch_players
    else
      puts "Invalid move. Please try again."
    end
  end

  def valid_move?(position)
    @board.grid[position].value == " "
  end

  def make_move(position)
    @board.grid[position].value = @current_player.symbol
  end

  def switch_players
    @current_player = @current_player == @players[0] ? @players[1] : @players[0]
  end

  def game_over?
    winner || tie?
  end

  def tie?
    @board.grid.values.all? { |board_case| board_case.value != " " }
  end
end

def winner
  winning_combinations = [
    [1, 2, 3], [4, 5, 6], [7, 8, 9],
    [1, 4, 7], [2, 5, 8], [3, 6, 9],
    [1, 5, 9], [3, 5, 7]
  ]

  winning_combinations.each do |comb|
    values = comb.map { |pos| @board.grid[pos].value }
    if values.all? { |val| val == "X" }
      return @players[0]
    elsif values.all? { |val| val == "O" }
      return @players[1]
    end
  end

  nil
end