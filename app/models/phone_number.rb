class PhoneNumber < ApplicationRecord
  belongs_to :contact

  validates :number, phone: true
  validates :number, presence: true, uniqueness: true
end
