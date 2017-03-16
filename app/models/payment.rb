class Payment < ActiveRecord::Base
  belongs_to :contract
	validates :pay_day, :pay_amount, presence: true 
	default_scope { order pay_day: :asc }

	scope :expired, -> (pay_day) { where( 'pay_day <= ?', pay_day.end_of_month )}
end
