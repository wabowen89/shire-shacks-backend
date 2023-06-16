class ShacksController < ApplicationController
    def index
        shacks = Shack.all
        render json: shacks
      end
    
      def create
        shack = Shack.create(shack_params)
        if shack.valid?
          render json: shack
        else
          render json: shack.errors, status: 422
        end
      end
    
      private
      def shack_params
        params.require(:shack).permit(:street, :hill, :unit, :square_footage, :price, :bedrooms, :bathrooms, :pets, :image, :user_id)
      end
end
