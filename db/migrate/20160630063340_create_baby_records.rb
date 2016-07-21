class CreateBabyRecords < ActiveRecord::Migration
  def change
    create_table :baby_records do |t|
      t.datetime :datetime
      t.integer :capacity

      t.timestamps null: false
    end
  end
end
