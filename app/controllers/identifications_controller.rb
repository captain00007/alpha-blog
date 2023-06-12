class IdentificationsController < ApplicationController
    before_action :require_admin
    before_action :require_user

    def new
        @identification =  Identification.new
    end

    def user_ident
        #puts "userrrrrrrrr id"
        #puts params[:id]
        @user_id = params[:id]
        @identification =  Identification.new
    end

    def create
        @identification =  Identification.new(params.require(:identification).permit(:register_number, :user_id, :active))
        
        if @identification.save
            flash[:notice]="Register number assigned to user"
            redirect_to ident_path
        else
            render 'new' , status: 422
        end
    end

    def edit
      @identification = Identification.find(params[:id])  
    end

    def update
        @identification = Identification.find(params[:id])  
        if @identification.update(params.require(:identification).permit(:register_number, :active))
            flash[:notice]="User identification update succesfully"
            redirect_to ident_path
        else
            render 'edit', status: 422
        end
    end

    def destroy
        @identification = Identification.find(params[:id])
        @identification.destroy
        redirect_to ident_path
    end

    private

    def require_admin
        if !(logged_in? && current_user.admin?)
            flash[:alert] = "Only admins can perform that action"
            redirect_to articles_path
        end
    end
end
