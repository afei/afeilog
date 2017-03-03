class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :code
      t.string :name
      t.string :area
      t.string :address
      t.string :contacter
      t.string :contact_number

      t.timestamps null: false
    end
  end
end
