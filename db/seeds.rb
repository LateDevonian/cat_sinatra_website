require 'faker'

30.times do
  Cat.create!(
    name: Faker::Artist.name,
    colour: Faker::Hacker.noun,
    weight_kgs: rand(2..6),
    temperament: Faker::Hacker.ingverb
  )
end
