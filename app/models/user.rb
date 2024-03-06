# frozen_string_literal: true

class User < ApplicationRecord # rubocop:todo Style/Documentation
  before_save :downcase_email

  has_secure_password
  validates :name, presence: true, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP}, presence: true, uniqueness: true

  private

  def downcase_email
    self.email = email.downcase
  end
end
