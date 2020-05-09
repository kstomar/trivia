class Trivium < ApplicationRecord
  belongs_to :user
  has_many :user_answers

  def calculate_score!
    scr = (user_answers.right.count * 4) - (user_answers.wrong.count * 1)
    update(score: scr)
  end
end
