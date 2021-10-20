class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def profile
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end

    def create
        puts "fasdlkfja"
        puts user_params
        @user = User.create(user_params)
        if @user.valid?
            @token = encode_token({ user_id: @user.id })
            render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
        else
            render json: { error: 'username has already been taken' }, status: :unprocessable_entity
        end
    end


    # def index
    #     render json: User.all
    # end

    # def show
    #     user = User.find_by(id: params[:id])
    #     if user
    #         render json: user
    #     else
    #         error_not_found
    #     end
    # end

    # def update
    #     user = User.find_by(id: params[:id])
    #     user.update(user_params)
    #     render json: user
    # end

    # def destroy 
    #     user = User.find_by(id:params[:id])
    #     if user
    #         user.destroy 
    #         head :no_content
    #     else
    #         error_not_found
    #     end
    # end

    private

    # def error_not_found
    #     render json: { error: "User not found" }, status: :not_found
    # end

    def user_params
        puts "fasdfa"
        puts params
        params.require(:user).permit(:username, :password, :bio, :profile_img)
    end
end
