class SundaesController < ApplicationController
    def new 
        # create new sundae to get access to the price of each model 
        @sundae = Sundae.new

        # display all data from each model in a separate drop down 
        cones = Cone.all
        @cones = cones.map do |cone|
            [cone.name, cone.id]
        end
        
        flavours = IceCreamFlavour.all
        @flavours = flavours.map do |flavour|
            [flavour.name, flavour.id]
        end
        types = IceCreamType.all
        @types = types.map do |type|
            [type.name, type.id]
        end

        toppings = Topping.all
        @toppings = toppings.map do |topping|
            [topping.name, topping.id]
        end
    end

    def create 
        @sundae = Sundae.create(params_sundae)
        redirect_to sundaes_path
    end

    def show
        @sundae = Sundae.find(params[:id])
    end

    def index
        @sundaes = Sundae.all
    end


    private

    def params_sundae
        params.require(:sundae).permit(:cone_id, :ice_cream_flavour_id,:ice_cream_type_id,:topping_id)
    end
end
