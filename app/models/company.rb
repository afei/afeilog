class Company < ActiveRecord::Base
  has_many :devices, dependent: :destroy
	has_many :contracts
  validates :code, :name, :contacter, :address, presence: true 
  validates :code, uniqueness: true
	AREAS = ["鹿城区", "龙湾区", "瓯海区", "洞头区"]

	def self.search(search)
		if search
			where('name LIKE ?', "%#{search}%")
		else
			all
		end
	end

end
