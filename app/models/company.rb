class Company < ActiveRecord::Base
  has_many :devices, dependent: :destroy
  validates :code, :name, :contacter, :address, presence: true 
  validates :code, uniqueness: true
end
