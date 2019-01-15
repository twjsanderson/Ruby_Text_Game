require './turn'
require './question'
require './player'

class Turn

  def initialize (player)
    puts '----- NEW TURN -----'
    new_question = Question.new
    puts "#{player.name}: #{new_question.question}"
    @answer = gets.chomp.to_i

    if new_question.correct? @answer
      puts "#{player.name}: CORRECT!"
    else
      player.lose_life
      puts "#{player.name}: WRONG!"
    end

  end
end

