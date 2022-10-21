class ProductionsController < ApplicationController
    def index
        productions = Production.all()
        render json: productions, status: :ok
    end

    def show
        production = Production.find_by(id: params[:id])

        if production
            render json: production, status: :ok
        else 
            render json: {error: "production not found"}, status: :not_found
        end
    end
end
