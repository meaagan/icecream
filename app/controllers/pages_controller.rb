class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @cones = Cone.all
    @flavours = IceCreamFlavour.all
    @types = IceCreamType.all
    @toppings = Topping.all
    @sundaes = Sundae.all
  end
end
