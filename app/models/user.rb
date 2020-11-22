class User < ApplicationRecord
  include BCrypt
  attr_accessor :password, :password_confirmation
  validates :password, confirmation: true
  has_secure_password

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_digest = @password
  end
end
