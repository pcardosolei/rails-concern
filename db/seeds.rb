# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

ActiveRecord::Base.transaction do
  data_attribute_name = DataAttribute.create!(name: 'name')
  data_attribute_phone = DataAttribute.create!(name: 'phone_number')
  data_attribute_capacity = DataAttribute.create!(name: 'capacity')

  p_1 = Partner.create!(name: 'partner 1', created_at: Time.now, updated_at: Time.now)
  p_2 = Partner.create!(name: 'partner 2', created_at: Time.now, updated_at: Time.now)

  c_1 = Customer.create!(name: 'customer 1', created_at: Time.now, updated_at: Time.now)
  c_2 = Customer.create!(name: 'customer 2', created_at: Time.now, updated_at: Time.now)

  CustomerFact.create!(data_attribute: data_attribute_phone, partner: p_1, customer: c_1, value: 'testphone', created_at: Time.now, updated_at: Time.now)

  debugger
end

