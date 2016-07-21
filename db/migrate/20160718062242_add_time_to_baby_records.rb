class AddTimeToBabyRecords < ActiveRecord::Migration
  def change
    add_column :baby_records, :record_time, :time
  end
end
