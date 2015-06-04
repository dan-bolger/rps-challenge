class Scissors

  attr_reader :name

  def initialize
    @name = "scissors"
  end

  def versus move
    if move.class == Paper
      :win
    elsif move.class == Stone
      :loss
    else
      :draw
    end
  end
end