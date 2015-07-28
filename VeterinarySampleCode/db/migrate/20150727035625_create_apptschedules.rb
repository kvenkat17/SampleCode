class CreateApptschedules < ActiveRecord::Migration
  def change
    create_table :apptschedules do |t|
      t.date :date_of_visit, null: false
      t.string :pet_name, null: false
      t.string :customer, null: false
      t.boolean :reminder_flag
      t.string :visit_reason, null: false
      t.string :doctor

      t.timestamps null: false
    end
  end
end
