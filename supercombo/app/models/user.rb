class User < ActiveRecord::Base
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 14 }
end
