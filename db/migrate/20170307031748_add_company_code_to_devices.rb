class AddCompanyCodeToDevices < ActiveRecord::Migration
  def change
		add_column :devices, :company_code, :string
  end
end
