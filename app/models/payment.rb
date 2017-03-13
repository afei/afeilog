class Payment < ActiveRecord::Base
  belongs_to :contract
	validates :pay_day, :pay_amount, presence: true 
end
