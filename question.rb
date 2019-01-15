require './turn'
require './question'
require './player'

class Question

  def initialize
    @first_number = Random.rand(1..10)
    @second_number = Random.rand(1..10)
    @answer = @first_number + @second_number
  end

  def question
    "what does #{@first_number} plus #{@second_number} equal?"
  end

  def correct?(answer)
    answer == @answer
  end

end
