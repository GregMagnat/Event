class Event < ApplicationRecord
    belongs_to :admin, class_name: 'User'

    has_many :attendances
    has_many :participants, through: :attendances, source: :user

    validates :start_date, presence: true
    validates :duration, presence: true, numericality: { greater_than: 0 }
    validates :devisible_by_5, presence: true
    validates :title, presence: true, length: { minimum: 5, maximum: 140 }
    validates :description, presence: true, length: { minimum: 20, maximum: 1000 }
    validates :price, presence: true, numericality: { greater_than_or_equal_to: 0}
    validates :location, presence: true
    validates :start_date_cannot_be_in_the_past, presence: true

    def start_date_cannot_be_in_the_past
        if start_date.present? && start_date < Date.today
            errors.add(:start_date, "can't be in the past")
        end
    end
    def devisible_by_5
        if duration.present? && duration % 5 != 0
            errors.add(:duration, "must be a multiple of 5")
        end
    end
end
