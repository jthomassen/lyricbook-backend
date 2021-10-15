class LyricsController < ApplicationController

    def index
        render json: Lyric.all
    end

    def show
        lyric = Lyric.find_by(id: params[:id])
        if lyric
            render json: lyric
        else
            error_not_found
        end
    end

    def create
        lyric = Lyric.create(lyric_params)
        render json: lyric 
    end

    def update
        lyric = Lyric.find_by(id: params[:id])
        lyric.update(lyric_params)
        render json: lyric
    end

    def destroy 
        lyric = Lyric.find_by(id:params[:id])
        if lyric
            lyric.destroy 
            head :no_content
        else
            error_not_found
        end
    end

    private

    def error_not_found
        render json: { error: "Lyric not found" }, status: :not_found
    end

    def lyric_params
        params.permit(:id, :title, :artist_name, :content, :copyright_name, :copyright_year, :user_id, :lyric)
    end
end
