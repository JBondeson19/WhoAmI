class UsersController < ApplicationController

    def show
     @user = User.find(params[:id])
     render json: @user 
    end

    def create
        @user = User.new(user_params)
        if user.save
            render json: @user
        else 
            render json: {error: @user.errors.messages}
        end
    end

    def destroy
        @user = User.find(params[:id])
        if @user.destroy
            head :no_content
        else 
            render json: {error: @user.errors.messages}
        end
    end


    private

    def user_params
        params.require(:user).permit(:username, :email)
    end
end
