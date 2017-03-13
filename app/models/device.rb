class Device < ActiveRecord::Base
  belongs_to :company 
  validates :device_code, :serial_no, :model_no, :first_use_date, :verify_date, presence: true 
  validates :device_code, uniqueness: true

	default_scope { order( company_id: :asc, verify_date: :asc)}

	scope :current, -> (verify_date) do
		first_date = verify_date.beginning_of_month
		end_date = verify_date.end_of_month
		where verify_date: first_date..end_date
	end
	scope :expired, -> (verify_date) { where( 'verify_date < ?',  verify_date.end_of_month )}
end
