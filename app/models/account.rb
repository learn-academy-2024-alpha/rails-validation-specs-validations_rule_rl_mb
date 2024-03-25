# class MyValidator < ActiveModel::Validator
#   def validate(record, attribute, value)
#     unless Account::password::
#       account.errors.add :password, "Password must include atleast 1 number"
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
  validates_with MyValidator
end
