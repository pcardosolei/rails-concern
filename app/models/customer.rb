class Customer < ApplicationRecord
  include HasDynamicAttribute

  attr_accessor :name
  has_many :customer_facts
end
