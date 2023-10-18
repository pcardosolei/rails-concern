class CustomAttributes < ActiveRecord::Migration[7.0]
  def change
    create_table :partners do |t|
      t.text :name, null: false
      t.timestamps
    end

    create_table :customers do |t|
      t.text :name, null: false
      t.timestamps
    end

    create_table :data_attributes do |t|
      t.text :name, null: false
      t.timestamps
    end

    create_table :customer_facts do |t|
      t.string :value, null: false
      t.references :data_attributes, foreign_key: { to_table: :data_attributes }, index: true, null: false
      t.references :customers, foreign_key: { to_table: :customers }, index: true, null: false
      t.references :partners, foreign_key: { to_table: :partners }, index: true, null: false

      t.timestamps
    end
  end
end
