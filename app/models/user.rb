class User < ActiveRecord::Base
  attr_accessible :name, :email
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  has_many :posts
  has_many :comments
  has_many :subscriptions
  has_many :groups, through: :subscriptions
  has_one :status, dependent: :destroy

  validates_format_of :email, with: /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i

  after_create :welcome_status

  def welcome_status
    status = Status.new(content: "I Just joined Clammor!", user_id: User.find(:all).last.id)
    status.save()
  end
end
