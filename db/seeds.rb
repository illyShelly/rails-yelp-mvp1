# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.delete_all

restaurants = Restaurant.create!([

  { name: 'Dishoom',
    address: 'Carrer San Pau',
    phone_number: '1234',
    category: 'chinese'
  },

  {
    name: 'Himalyan',
    address: 'Pablo Raval',
    phone_number: '6789',
    category: 'italian'
  },

  { name: 'Can Cases',
    address: 'Can Cortes 15',
    phone_number: '6588',
    category: 'chinese'
  },

  { name: 'La Pepita',
    address: 'Carrer Pablo Sec',
    phone_number: '7778',
    category: 'chinese'
  },

  { name: 'Ripe Tomato',
    address: 'Carrer Madrid',
    phone_number: '789',
    category: 'chinese'
  }
  ])

# To see it when running rails db:seeds otherwise in rails console
p restaurants


puts "Restaurants created."

Review.delete_all

50.times do
  Review.create!(content: "Amazing restaurant", rating: [0,1,2,3,4,5].sample, restaurant_id: restaurants.sample.id)
end

puts "Reviews created."
