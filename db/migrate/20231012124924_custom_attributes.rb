class CustomAttributes < ActiveRecord::Migration[7.0]
  def change
    create_table :partners do |t|
      t.text :name
      t.timestamps
    end

    create_table :customers do |t|
      t.text :name
      t.timestamps
    end

    create_table :data_attributes do |t|
      t.text :name
      t.timestamps
    end

    create_table :customer_facts do |t|
      t.references :data_attributes, foreign_key: true
      t.references :customers, foreign_key: true
      t.string :value
      t.timestamps
    end
  end
end
