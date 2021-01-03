class MoodsController < ApplicationController

    def show
        @mood = Mood.find(params[:id])
        render json: @mood
    end

    private
    
    def mood_params
        params.require(:mood).permit(:emotion, user_ids:[])
    end
end
