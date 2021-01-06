class Api::V1::MoodsController < ApplicationController

    def show
        @mood = Mood.find(params[:id])
        render json: MoodSerializer.new(@mood).to_json
    end


    def create
        @mood = Mood.new(mood_params)
        if @mood.save
            render json: @mood
        else 
            render json: {error: @mood.errors.messages}
        end
    end

    private
    
    def mood_params
        params.require(:mood).permit(:emotion, user_ids:[])
    end
end

