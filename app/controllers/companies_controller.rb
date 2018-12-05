class CompaniesController < ApplicationController
	before_action :authenticate_admin!
	def index
		@companies = Company.all
	end

	def show
		@company = Company.find(params[:id])
	end

	def new
		@company = Company.new
	end

	def edit
		@company = Company.find(params[:id])
	end

	def update
		@company = Company.find(params[:id])
		@company.update(valid_params)
		redirect_to company_path
	end

	def create
		@company = Company.create(valid_params)
		redirect_to company_path(@company.id)
	end

	def destroy
		@company = Company.find(params[:id])
		@company.destroy
		redirect_to companies_path
	end

	private

	def valid_params
		params.require(:company).permit(:name, :director_name, :city)
	end
end