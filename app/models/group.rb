class Group < ActiveRecord::Base
  validates :motto, presence: true
  validates :name, {presence: true, uniqueness: true}
  has_many :subscriptions
  has_many :users, through: :subscriptions

end
