class CreateVeterinarydocslists < ActiveRecord::Migration
  def change
    create_table :veterinarydocslists do |t|
      t.string :name, null: false, limit: 35 
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :school_degree_recvd
      t.integer :years_in_practice 
      t.timestamps null: false
    end
  end
end
