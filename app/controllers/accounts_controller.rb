class AccountsController < ApplicationController
    def new
        @user = User.new
        render layout: false
    end

    def create
        user = User.new(resource_params)
        user.save
        redirect_to new_session_path
    end

    private

    def resource_params
        params.require(:user).permit(:name, :username, :password)
    end

end
