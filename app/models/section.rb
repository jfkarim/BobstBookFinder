class Section < ActiveRecord::Base
  attr_accessible :floor_id, :name
  
  validates :name, presence: true
  validates :name, uniqueness: true
  
  belongs_to :floor
  
end
