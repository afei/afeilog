class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.date :pay_day
      t.decimal :pay_amount
      t.string :contract_no
      t.references :contract, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
