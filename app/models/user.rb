class User < ActiveRecord::Base
  has_many :rounds

  validates :username, uniqueness: true, presence: true
  validates :password, presence: true

  def self.authenticate(username, password)
    self.find_by(username: username, password: password)
  end
end
