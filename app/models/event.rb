class Event < ActiveRecord::Base
  validates :name, :start_date, :end_date, presence: true
  validate :valid_date

    def valid_date
      if (start_date && end_date) && (end_date < start_date)
        errors.add(:end_date, "must be later than Start Date")
      end
    end

end
