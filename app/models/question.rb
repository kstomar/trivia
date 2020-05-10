class Question < ApplicationRecord
  belongs_to :user
  has_many :options
  has_one :answer
  has_many :user_answers


  validates :title, presence: true

  accepts_nested_attributes_for :options

  enum level: [:easy, :medium, :hard]
end
