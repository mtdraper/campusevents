class Event < ActiveRecord::Base
  validates :name, :start_date, :end_date, presence: true
  validate :valid_date
  
  has_many :meetings
  has_and_belongs_to_many :sponsors
  has_many :subscriptions
  has_many :attendees, through: :subscriptions

    def valid_date
      if (start_date && end_date) && (end_date < start_date)
        errors.add(:end_date, "must be later than Start Date")
      end
    end

end
