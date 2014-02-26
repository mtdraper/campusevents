class Location < ActiveRecord::Base
  validates :name, :meeting_id, presence: true
  
  
  has_many :meetings
end
