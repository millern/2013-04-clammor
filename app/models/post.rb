class Post < ActiveRecord::Base
  attr_accessible :title, :content
  validates :title, presence: true
  validates :content, presence: true

  belongs_to :user
  has_many :comments, dependent: :destroy

end
