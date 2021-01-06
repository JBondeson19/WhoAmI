# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all 
Post.destroy_all
Mood.destroy_all
MoodPost.destroy_all

 10.times do 
    User.create(username: Faker::Internet.username, email: Faker::Internet.email, password: "Hey")
end


15.times do
    Post.create(user_id: rand(11...21), content: Faker::Lorem.paragraph)
end

25.times do
    emotion = ["Happy","Sad", "Excited", "Confused", "Anxious", "Grateful", "Stressed", "Annoyed", "Elated", "Relieved"]
    Mood.create(user_id: rand(11...21), emotion: emotion.sample)
end

12.times do
    MoodPost.create(mood_id: rand(1...15), post_id: (1...25))
end
