class Game < ActiveRecord::Base
  has_many :subscriptions
  validates :name, presence: true
end
