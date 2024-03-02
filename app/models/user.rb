# frozen_string_literal: true

class User < ApplicationRecord # rubocop:todo Style/Documentation
  validates :name, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: 'Invalid email format' }
end
