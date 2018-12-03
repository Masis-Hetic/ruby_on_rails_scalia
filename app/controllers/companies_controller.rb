class CompaniesController < ApplicationController
	def index
		@companies = Company.all
	end

	def show

	end

	def new
		@company = Company.new
	end

	def edit
		@company = Company.find(params[:id])
	end

	def update
	end

	def create
		@company = Company.new(valid_params)
		@company.save
		redirect_to companies_path
	end

	private

	def valid_params
		params.require(:company).permit(:name, :director_name, :city)
	end
end