class Company < ActiveRecord::Base
  has_many :devices, dependent: :destroy
  self.primary_key = :code
  validates :code, :name, :contacter, :address, presence: true 
end
