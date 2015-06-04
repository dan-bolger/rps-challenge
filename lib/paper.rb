class Paper

  attr_reader :name

  def initialize
    @name = "paper"
  end

  def versus move
    if move.class == Paper
      :draw
    elsif move.class == Scissors
      :loss
    else
      :win
    end
  end

  def paper?
    true
  end

  def stone?
    false
  end
end