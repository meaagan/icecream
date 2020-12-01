# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

me = User.create(email: 'meagan@email.com', password: 123456)

waffle = Cone.create(name: "Waffle Cone")
normal = Cone.create(name: "Normal Cone")
bowl = Cone.create(name: "Bowl")

soft = IceCreamType.create(name: "Soft")
hard = IceCreamType.create(name: "Hard")

chocolate = IceCreamFlavour.create(name: "Chocolate")
vanilla = IceCreamFlavour.create(name: "Vanilla")
brownie = IceCreamFlavour.create(name: "Brownie")
cookie_dough = IceCreamFlavour.create(name: "Cookie Dough")
mint = IceCreamFlavour.create(name: "Mint")
oreo = IceCreamFlavour.create(name: "Oreo")

marshmallows = Topping.create(name: "Marshmallows")
cereal = Topping.create(name: "Cereal")
skore = Topping.create(name: "Skore Bits")
oreo = Topping.create(name: "Oreo")

# sundae = Sundae.create(name: "The meagan", )