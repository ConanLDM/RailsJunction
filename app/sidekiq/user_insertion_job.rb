# frozen_string_literal: true

class UserInsertionJob # rubocop:todo Style/Documentation
  include Sidekiq::Worker

  def perform(users)
    users.each do |user|
      User.create!(name: user.name, email: user.email)
    end
  end
end
