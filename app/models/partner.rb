class Partner < ApplicationRecord
  attr_accessor :name
  has_many :customer_facts
end
