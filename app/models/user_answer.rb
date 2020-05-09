class UserAnswer < ApplicationRecord
  belongs_to :user
  belongs_to :question
  belongs_to :trivium

  scope :right, -> { where(answer: false) }
  scope :wrong, -> { where(answer: true) }

end
