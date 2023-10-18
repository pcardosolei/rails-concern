class Customer < ApplicationRecord
  include HasDynamicAttribute
  # belongs_to :partner
  has_many :customer_facts

  validates :name, presence: true


  def save_attribute(attribute_name, value)
    data_attribute = DataAttribute.find_by(name: attribute_name)

    if data_attribute.nil?
      data_attribute = DataAttribute.create!(name: attribute_name)
    end

    puts self.id

    partner = Partner.first
    # partner here is dummy. i should have a foreign key pointing at partner
    CustomerFact.create!(data_attribute: data_attribute, partner: partner, customer: self, value: value, created_at: Time.now, updated_at: Time.now)
  end
end
