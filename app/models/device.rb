class Device < ActiveRecord::Base
  belongs_to :company 
  self.primary_key = :device_code
  validates :device_code, :serial_no, :model_no, :first_use_date, :verify_date, presence: true 
end
