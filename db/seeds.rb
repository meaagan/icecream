# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

me = User.create(email: 'meagan@email.com', password: 123456)

# waffle = Cone.create(name: "Waffle Cone")
# normal = Cone.create(name: "Normal Cone")
# bowl = Cone.create(name: "Bowl")

# soft = IceCreamType.create(name: "Soft")
# hard = IceCreamType.create(name: "Hard")

# chocolate = IceCreamFlavour.create(name: "Chocolate")
# vanilla = IceCreamFlavour.create(name: "Vanilla")
# brownie = IceCreamFlavour.create(name: "Brownie")
# cookie_dough = IceCreamFlavour.create(name: "Cookie Dough")
# mint = IceCreamFlavour.create(name: "Mint")
# oreo = IceCreamFlavour.create(name: "Oreo")

# marshmallows = Topping.create(name: "Marshmallows")
# cereal = Topping.create(name: "Cereal")
# skore = Topping.create(name: "Skore Bits")
# oreo = Topping.create(name: "Oreo")

# sundae = Sundae.create(name: "The meagan", )

require 'csv'

csv_options = { col_sep: ',', headers: :first_row }

puts "Starting seed..."

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
    puts "Created #{row['Name']} at $#{row['price']}"
end

# puts "Seeding flavours"

# CSV.foreach(flavor_file, csv_options) do |row|
#     IceCreamFlavour.create(
#         name: "#{row['Name']}", 
#         price: row['price'].to_f
#     )
#     puts "Created #{row['Name']} at $#{row['price']}"
# end

# puts "Seeding toppings"

# CSV.foreach(toppings_file, csv_options) do |row|
#     Topping.create(
#         name: "#{row['Name']}", 
#         price: row['price'].to_f
#     )
#     puts "Created #{row['Name']} at $#{row['price']}"
# end

# puts "Seeding types"

# CSV.foreach(type_file, csv_options) do |row|
#     IceCreamType.create(
#         name: "#{row['Name']}", 
#         price: row['price'].to_f
#     )
#     puts "Created #{row['Name']} at $#{row['price']}"
# end

# puts "Done"