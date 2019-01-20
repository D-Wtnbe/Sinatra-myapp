class User < ActiveRecord::Base
  validates :email, uniqueness: true
  validates :userid, :name, :password, :email, presence: true, on: :create
  validates :password, length: { minimum: 4, maximum: 20 }, on: :create
  validates :userid, :name, :email, presence: true, on: :update
  has_secure_password

end
