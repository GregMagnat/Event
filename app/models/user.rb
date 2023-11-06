class User < ApplicationRecord
    has_many :administered_events, class_name: 'Event', foreign_key: 'admin_id'

    has_many :attendances
    has_many :attended_events, through: :attendances, source: :event
end
