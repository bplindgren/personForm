class Person < ActiveRecord::Base
  validates :first_name, :last_name, :gender, :address, :city, :state, presence: true
end