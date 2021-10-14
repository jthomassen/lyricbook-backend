class LyricsController < ApplicationController

    def index
        render json: Lyric.all
    end
end
