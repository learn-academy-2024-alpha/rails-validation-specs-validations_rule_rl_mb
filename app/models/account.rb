# class MyValidator < ActiveModel::Validator
#   def validate(record)
#     unless record.password.match(/\d/)
#       record.errors.add :password, "Password must include atleast 1 number"
#     end
#   end
# end

class Account < ApplicationRecord
  has_many :addresses
  validates :username, :password, :email, presence: true
  validates :username, length: { minimum: 5 }
  validates :username, uniqueness: true
  validates :password, length: { minimum: 6 }
  validates :password, uniqueness: true
  validate :validate

  def validate
    if password.nil?
       errors.add :password, "can't be blank"
    else

      errors.add(:password, "Password must include atleast 1 number") unless password.match(/\d/)
    end
  end
end
