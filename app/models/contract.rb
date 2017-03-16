class Contract < ActiveRecord::Base
	belongs_to :company
	has_many :payments, dependent: :destroy
	validates :contract_no, :contract_start, :contract_end, :company_code, :company_id, presence: true  
	validates :contract_no, uniqueness: true

	def self.search( search )
		if search
			where('contract_no LIKE ?', "%#{search}%")
		else
			all
		end
	end
end
