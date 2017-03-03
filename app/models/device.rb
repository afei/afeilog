class Device < ActiveRecord::Base
  belongs_to :company 
  self.primary_key = :device_code
end
