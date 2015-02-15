class User < ActiveRecord::Base
  has_many :subscriptions
  validates :email, presence: true
  validates :edit_code, presence: true
end
