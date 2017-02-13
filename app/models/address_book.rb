class AddressBook < ApplicationRecord
  belongs_to :user
  validates_presence_of :phone
  validates_presence_of :street
  validates_presence_of :post
  validates_presence_of :city
  validates_presence_of :country
end
