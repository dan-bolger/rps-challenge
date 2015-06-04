class Stone

  attr_reader :name

  def initialize
    @name = "stone"
  end

  def versus move
    if move.class == Scissors
      :win
    elsif move.class == Paper
      :loss
    else
      :draw
    end
  end
end