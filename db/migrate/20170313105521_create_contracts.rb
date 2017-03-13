class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.string :contract_no
      t.date :contract_start
      t.date :contract_end
      t.string :duty_officer
      t.decimal :fees, precision: 8, scale: 2

      t.timestamps null: false
    end
  end
end
