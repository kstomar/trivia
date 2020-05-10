class Question < ApplicationRecord
  has_many :options
  has_one :answer
  has_many :user_answers

  accepts_nested_attributes_for :options

  enum level: [:easy, :medium, :hard]
end
