class User < ActiveRecord::Base
  validates :login, length: {minimum: 5}
  has_secure_password
end
