class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def show
		@user = User.show_one_user(params[:id])
	end

	def create
		@user = User.create(users_params)
		redirect_to user_path(@user.id)
	end

	def new
		@user = User.new
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		@user.update(users_params)
		redirect_to user_path
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to users_path
	end

	private

	def users_params
		params.require(:user).permit(:first_name, :last_name, :companies_id)
	end
end