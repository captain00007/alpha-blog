class UsersController < ApplicationController
    def show
        @user=User.find(params[:id])
    end
    
    def index
        @users=User.all  
    end

    def new
        @user=User.new
    end

    def edit
        @user=User.find(params[:id])
    end

    def create
        @user=User.new(user_params)
        # @article.user=User.first
        if @user.save
            flash[:notice]= "Welcome to Captain blog #{@user.username}"
            redirect_to articles_path
        else
            render 'new' , status: 422
        end
    end

    def update
        @user=User.find(params[:id])
        if @user.update(user_params)
            flash[:notice]="#{@user.username} update succesfully"
            redirect_to user_path
        else
            render 'edit', status: 422
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end
end
