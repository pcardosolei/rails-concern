class CustomerFact < ApplicationRecord
  belongs_to :customer, class_name: "Customer", foreign_key: "customers_id"
  belongs_to :partner, class_name: "Partner", foreign_key: "partners_id"
  belongs_to :data_attribute, class_name: "DataAttribute", foreign_key: "data_attributes_id"

  validates :value, presence: true
end
