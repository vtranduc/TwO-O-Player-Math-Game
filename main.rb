require "./player"

class Game

  def initialize
    @startingLives = 3
    @players = [
      Player.new("Player 1", "P1", @startingLives),
      Player.new("Player 2", "P2", @startingLives)
    ]
    @nPlayers = @players.length
  end

  def play
    turn = @nPlayers - 1
    while true
      puts "----- NEW TURN -----"
      turn = (turn + 1) % @nPlayers
      @players[turn].challenge
      puts "P1: #{@players[0].stat} vs P2: #{@players[1].stat}"
      if @players[turn].isDead?
        winner = (@players.select { |player| !player.isDead? })[0]
        puts "#{winner.name} wins with a score of #{winner.stat}"
        puts "----- GAME OVER -----"
        puts "Good bye!"
        break
      end
    end
  end
end

Game.new.play