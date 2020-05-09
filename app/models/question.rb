class Question < ApplicationRecord
  has_many :options
  has_one :answer
  has_many :user_answers

  enum level: [:easy, :medium, :hard]
end
