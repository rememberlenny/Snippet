class User < ActiveRecord::Base
  attr_accessible :name, :phone

  validates :name, presence: true
  validates :phone, presence: true, uniqueness: true
end
