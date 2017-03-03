class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :device_code, null: false 
      t.string :serial_no
      t.string :model_no
      t.string :manufacturer
      t.date :first_use_date
      t.date :verify_date
      t.references :company, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
