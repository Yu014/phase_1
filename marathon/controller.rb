require_relative 'model.rb'
require_relative 'view.rb'

class Game
  def initialize
    @model = Csv.new
    @view = View.new
    @view.welcome
    summary
  end
  
  def questions
    counter = 0
    input_array = []
    @model.questions.each do |question|
      counter += 1
      input_array << @view.asking(counter, question)
    end
    input_array
  end

  def answers
    answers = questions
    good = @model.answers
    index = 0
    valid = []
    while index <= 14
      answers[index].downcase == good[index].downcase ? (valid << true) : (valid << false)
      index += 1
    end
    valid
  end

  def summary
    good = 0
    wrong = 0
    resume = answers
    resume.each do |boolean|
      boolean == true ? (good += 1) : (wrong += 1)
    end
    @view.summary(good, wrong)
  end
end

Game.new

