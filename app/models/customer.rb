class Customer < ApplicationRecord
  include HasDynamicAttribute

  attr_accessor :name
end
