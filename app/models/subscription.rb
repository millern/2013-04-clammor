class Subscription < ActiveRecord::Base
  belongs_to :user
  belongs_to :group
  # validate :renew_date_is_valid_datetime?
  # def renew_date_is_valid_datetime?
  #   unless renew_date
  #     errors.add(:renew_date,"is not valid")
  #
  # end
  validates :renew_date, presence: true  #this does the same thing as the above block
end
