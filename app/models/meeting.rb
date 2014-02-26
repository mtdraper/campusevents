class Meeting < ActiveRecord::Base

validates :name, :start_time, :end_time, presence: true
  validate :valid_date
  
  belongs_to :location
  belongs_to :event

    def valid_date
      if (start_time && end_time) && (end_time < start_time)
        errors.add(:end_time, "must be later than Start Time")
      end
    end

end
