class User < ApplicationRecord
  has_secure_password
  validates :email, uniqueness: true, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }, :if => Proc.new { |t| t.has_attribute? "email" }
  validates :password, length: { within: 8..40 }, allow_nil: true
end
