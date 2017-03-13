class AddCompanyCodeToContracts < ActiveRecord::Migration
  def change
		add_reference :contracts, :company, index: true, foreign_key: true
		add_column :contracts, :company_code, :string
  end
end
