require_relative 'model.rb'
require_relative 'view.rb'

class Game
  def initialize
    @model = Csv.new
    @view = View.new
  end
  def spliting_arrays
    big_array = @model.reader
    questions = []
    answers = []
    guessed = []
    big_array.each do |x, y, z|
      questions << x
      answers << y
      guessed << z
    end
    @questions = questions
    @answers = answers
    @guessed = guessed
  end
  def questions
  enda

  def answers
  end

  def summary
  end
end

Game.new.spliting_arrays