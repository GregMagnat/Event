=begin
require 'faker'

Attendance.destroy_all
Event.destroy_all
User.destroy_all

all_users = []
all_events = []

event_durations = [5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80, 85, 90, 95, 100, 105, 110, 115, 120]
event_titles = ["Curieux Babouin","Jungle des Singes","Roi Banane et Coco","Bananes & Singeries","Singes en Folie","Clan des Malicieux","Chercheurs Perdus","Singes Astronautes","Île des Singes","Singes & Amis"]

10.times do 
    new_user = User.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: "user#{rand(1...10)}@yopmail.com",
        description: Faker::Hacker.say_something_smart
    )
    all_users << new_user
end

10.times do 
    new_event = Event.create(
        start_date: Faker::Date.forward(days: 365),
        duration: event_durations.sample,
        title: event_titles.sample,
        description: Faker::Lorem.sentences(number: 2).join(' '),
        price: Faker::Number.between(from: 1, to: 1000),
        location: Faker::Address.city
    )
    all_events << new_event
end

10.times do 
    new_attendance = Attendance.create(
        user: all_users.sample,
        event: all_events.sample
    )
end
=end

User.create(email: 'user1@yopmail.com', encrypted_password: '123456', description: 'roi singe 1', first_name: 'Sylvain', last_name: 'Delajungle')
User.create(email: 'user2@yopmail.com', encrypted_password: '123456', description: 'reine singe 2', first_name: 'Marina', last_name: 'Delajungle')
User.create(email: 'user3@yopmail.com', encrypted_password: '123456', description: 'bébé singe 3', first_name: 'Ikram', last_name: 'Delajungle')