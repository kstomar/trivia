class Option < ApplicationRecord
  attr_accessor :is_answer
  belongs_to :question
  has_one :answer

  after_save :set_answer

  def set_answer
    if is_answer == '1'
      Answer.create(question: question, option: self)
    end
  end
end
