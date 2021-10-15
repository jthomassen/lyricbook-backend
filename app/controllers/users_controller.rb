class UsersController < ApplicationController

    def index
        render json: User.all
    end

    def show
        user = User.find_by(id: params[:id])
        if user
            render json: user
        else
            error_not_found
        end
    end

    def update
        user = User.find_by(id: params[:id])
        user.update(user_params)
        render json: user
    end

    def destroy 
        user = User.find_by(id:params[:id])
        if user
            user.destroy 
            head :no_content
        else
            error_not_found
        end
    end

    private

    def error_not_found
        render json: { error: "User not found" }, status: :not_found
    end

    def user_params
        params.permit(:bio, :profile_img)
    end
end
