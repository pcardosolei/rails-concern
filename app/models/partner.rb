class Partner < ApplicationRecord
  has_many :customer_facts
  
  validates :name, presence: true
end
