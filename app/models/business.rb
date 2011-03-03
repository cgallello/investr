class Business < ActiveRecord::Base
  
  has_many :votes
  accepts_nested_attributes_for :votes
  
end
