# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



require 'csv'


puts "Starting seed..."

puts "Creating user"

User.create(email: 'meagan@email.com', password: 123456)

csv_options = { col_sep: ',', headers: :first_row }

cone_file ='lib/data/cone.csv'
flavor_file ='lib/data/flavor.csv'
toppings_file ='lib/data/toppings.csv'
type_file ='lib/data/type.csv'

puts "Seeding cones"

CSV.foreach(cone_file, csv_options) do |row|
    Cone.create(
        name: "#{row['name']}", 
        price: row['price'].to_f
    )
    puts "Created #{row['name']} at $#{row['price']}"
end

puts "Seeding flavours"

CSV.foreach(flavor_file, csv_options) do |row|
    IceCreamFlavour.create(
        name: "#{row['name']}", 
        price: row['price'].to_f
    )
    puts "Created #{row['name']} at $#{row['price']}"
end

puts "Seeding toppings"

CSV.foreach(toppings_file, csv_options) do |row|
    Topping.create(
        name: "#{row['name']}", 
        price: row['price'].to_f
    )
    puts "Created #{row['name']} at $#{row['price']}"
end

puts "Seeding types"

CSV.foreach(type_file, csv_options) do |row|
    IceCreamType.create(
        name: "#{row['name']}", 
        price: row['price'].to_f
    )
    puts "Created #{row['name']} at $#{row['price']}"
end

puts "Creating one sundae"

Sundae.create(cone_id: 1, ice_cream_type_id: 1,ice_cream_flavour_id: 1, topping_id: 1)

puts "Done"