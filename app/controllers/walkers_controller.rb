class WalkersController < ApplicationController
    def index
        @walkers = Walker.all
    end
    
    def show
        @walker = Walker.find(params[:id])
    end
    
    def new
        @walker = Walker.new
    end

    def full_name
        @walker.first_name + @walker.last_name
    end
    
    def create
        @walker = Walker.create(walker_params)
        if @walker.valid?
          redirect_to walker_path(@walker)
        else
          flash[:my_errors] = @walker.errors.full_messages
          redirect_to new_walker_path
        end
    end
    
    private
    
    def walker_params
        params.require(:walker).permit(:first_name, :last_name, :email, :img_url)
    end

    
end
