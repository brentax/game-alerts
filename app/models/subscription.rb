class Subscription < ActiveRecord::Base
  belongs_to :user
  belongs_to :game

  validates :threshold_price, numericality: { greater_than: 0 }
end
