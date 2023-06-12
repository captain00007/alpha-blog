class UsersController < ApplicationController
    before_action :require_admin, except: [:index, :show]
    before_action :set_user, only: [:show, :edit, :update, :destroy]
    before_action :require_user

    def show
        @user_articles=@user.articles.paginate(page: params[:page], per_page: 2)
    end
    
    def index
        @users=User.paginate(page: params[:page], per_page: 2)
    end

    def new
        @user=User.new
    end

    def edit
        
    end

    def create
        @user=User.new(user_params)
        if @user.save
            flash[:notice]= "Welcome to Captain blog #{@user.username}"
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            render 'new' , status: 422
        end
    end

    def update
        if @user.update(user_params)
            flash[:notice]="#{@user.username} update succesfully"
            redirect_to user_path
        else
            render 'edit', status: 422
        end
    end

    def destroy
        @user.destroy
        flash[:notice]="User deleted with success"
        session[:user_id]=nil if current_user == @user
        redirect_to users_path
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end

    def set_user
        @user=User.find(params[:id])
    end

    def require_admin
        if !(logged_in? && current_user.admin?)
            flash[:alert] = "Only admins can perform that action"
            redirect_to users_path
        end
    end
end
