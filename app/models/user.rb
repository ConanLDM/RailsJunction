# frozen_string_literal: true

class User < ApplicationRecord
  validates :name, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: 'Invalid email format' }
end
