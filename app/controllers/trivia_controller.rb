class TriviaController < ApplicationController
  before_action :authorize

  # GET /trivia
  # GET /trivia.json
  def index
    @trivia = Trivium.where.not(user_id: current_user.id)
  end

  # GET /trivia/new
  def new
    @trivium = Trivium.new
  end

  # POST /trivia
  # POST /trivia.json
  def create
    trivium = Trivium.create(user: current_user)
    params['question'].each do |question_id, answer_option_id|
      question = Question.find(question_id)
      answer = Answer.find_by(question_id: question.id)
      option = Option.find(answer_option_id)
      answer = (answer.option_id == option.id)
      UserAnswer.create(question: question, answer: answer, user: current_user, trivium: trivium)
    end

    redirect_to trivia_path, notice: 'Trivium was successfully created.'
  end
end
