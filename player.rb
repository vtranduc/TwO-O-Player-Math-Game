puts "start of player file"

class Player

  attr_reader :name, :shortName

  def initialize(name, shortName, startingLives)
    @name = name
    @maxLives = startingLives
    @lives = startingLives
    @shortName = shortName
  end

  def challenge
    a = (0..20).to_a.sample
    b = (0..20).to_a.sample
    puts "#{@name}: What does #{a} plus #{b} equal?"
    correct?(gets.chomp.to_f == a + b)
  end

  def isDead?
    @lives <= 0
  end

  def stat
    "#{@lives}/#{@maxLives}"
  end

  private

  def correct?(correctlyAnswered)
    if correctlyAnswered
      puts "Yes! You are correct."
    elsif !correctlyAnswered
      puts "#{@name}: Seriously? No!"
      @lives -= 1
    end
  end

  

end