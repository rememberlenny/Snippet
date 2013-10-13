class User < ActiveRecord::Base

  validates :firstname, presence: true
  validates :phone, presence: true, uniqueness: true
end
