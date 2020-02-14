class User
  def initialize(answers)
    @answers = Answers.new(answers)
  end

  def add_answer(input)
    @answers << input
  end
  
end