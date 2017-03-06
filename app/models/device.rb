class Device < ActiveRecord::Base
  belongs_to :company 
  validates :device_code, :serial_no, :model_no, :first_use_date, :verify_date, presence: true 
  validates :device_code, uniqueness: true
end
