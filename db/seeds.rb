# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

100.times do
  product = Product.new(name: Faker::Commerce.product_name,
                        description: Faker::Lorem.sentence,
                        price: Faker::Commerce.price)
  product.save
end

["Poetry", "Essay Poetica", "Poetic Dictionaries", "Poetic Tomes", "Poetic Essays"].each do |dept|
  Department.create(name: dept)
end
