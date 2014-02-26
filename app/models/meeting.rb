class Meeting < ActiveRecord::Base
  validates :name, :start, :end, presence: true
  
  validate :valid_date

  def valid_date
    if (self.start && self.end) && (self.end < self.start)
       errors.add(:end, "must be later than Start")
    end
  end

end
