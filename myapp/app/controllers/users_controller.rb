class UsersController < ApplicationController
    

    def index
       @users =  User.all
    end
    def show
        @user = User.find(params[:id])
    end
    def new
        @user = User.new
    end
    def create
        @user = User.new(user_params) 
        if @user.save
            UserMailer.registration_confirmation(@user).deliver!
            flash[:success] = "Please Check Your Email to Verify your Registration!"
            redirect_to @user
        else
          render 'new'
        end
    end
    def edit
        @user = User.find(params[:id])
    end
    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to users_path
    end
    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            redirect_to @user
        else
            render 'edit'
        end
    end
    def set_complete
        user = User.find(params[:id])
        puts user
        user.update(:is_verified => true)
        redirect_to users_path 
        
    end
    private
        def user_params
            params.require(:user).permit(:username, :phone_number, :email)
        end
    end
