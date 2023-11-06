class User < ApplicationRecord
    has_many :administered_events, class_name: 'Event', foreign_key: 'admin_id'

    has_many :attendances
    has_many :attended_events, through: :attendances, source: :event

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :description, presence: true

    after_create :welcome_send

    def welcome_send
        UserMailer.welcome_email(self).deliver_now
    end
end
