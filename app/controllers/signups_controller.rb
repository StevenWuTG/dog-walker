class SignupsController < ApplicationController
    def new
        @signup = Signup.new
    end

    def create
        @signup = Signup.create(signup_params)
        if @signup.valid?
            redirect_to walker_path(@signup.walker)
        else
            flash[:my_errors] = @signup.errors.full_messages
            redirect_to new_signup_path
        end
    end

    private

    def signup_params
        params.require(:signup).permit(:walker_id, :dog_id, :date, :time)
    end
end
