class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update, :destroy]
    before_action :require_user, except: [:show, :index, :new, :create]
    before_action :require_same_user, only: [:update, :edit, :destroy]

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
            flash[:success]= "Welcome to Captain blog #{@user.username}"
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
        flash[:success]="User and all articles are deleted"
        session[:user_id]=nil
        redirect_to users_path
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end

    def set_user
        @user=User.find(params[:id])
    end

    def require_same_user
        if current_user != @user
            flash[:danger] = 'You can only edit your own user'
            redirect_to @user
        end
    end
end
