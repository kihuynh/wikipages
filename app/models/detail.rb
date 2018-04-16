class Detail < ActiveRecord::Base
  belongs_to :store

  validates :address, :presence => true
  validates :phone, :presence => true
  validates :website, :presence => true
  validates :hours, :presence => true
end
