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

        @sundaes = Sundae.all
    end

    def create 
        @sundae = Sundae.new(params_sundae)

        if @sundae.save
            redirect_to sundae_path(@sundae)
        else
            render :new
        end
    end

    def show
        @sundae = Sundae.find(params[:id])

        @total = @sundae.cone.price + @sundae.ice_cream_flavour.price + @sundae.ice_cream_type.price + @sundae.topping.price
    end

    def index
        @sundaes = Sundae.all
    end

    private

    def params_sundae
        params.require(:sundae).permit(:cone_id, :ice_cream_flavour_id,:ice_cream_type_id,:topping_id)
    end
end
