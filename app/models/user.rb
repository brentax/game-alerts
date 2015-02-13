class User < ActiveRecord::Base
  validates :email, presence: true
  validates :edit_code, presence: true
end
