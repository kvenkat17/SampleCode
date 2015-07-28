class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :pet_name, limit: 35, null:false
      t.string :type_of_pet
      t.string :breed, limit: 35, null: false
      t.integer :age, null: false
      t.integer :weight, null: false
      t.date :last_visit_date, null: false 
      t.timestamps null: false
    end
  end
end
