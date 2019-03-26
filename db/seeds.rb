# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  user = User.create name: Faker::Name.name, job: Faker::Job.title

  3.times do 
    user.comments.create status: 'Positive', content: Faker::Quote.yoda, date_created: Faker::Date.backward(10), votes: Faker::Number.between(1,20)
  end
  
  3.times do
    user.comments.create status: 'Negative', content: Faker::Quote.yoda, date_created: Faker::Date.backward(10), votes: Faker::Number.between(1,20)
  end
end