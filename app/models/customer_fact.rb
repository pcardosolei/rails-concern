class CustomerFact < ApplicationRecord
  belongs_to :customer
  belongs_to :partner
  belongs_to :data_attribute, foreign_key: :data_attribute_id
end
