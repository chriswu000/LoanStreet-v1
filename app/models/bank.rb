class Bank < ActiveRecord::Base
  validates :name, :uniqueness => true
  validates :user_name, :uniqueness => true

  has_many :loans
end
