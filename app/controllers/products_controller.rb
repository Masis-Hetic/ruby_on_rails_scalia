class ProductsController < ApplicationController

	def index
		@products = Product.all
	end

	def show
		@product = Product.show_one_product(params[:id])
	end

	def new
		@product = Product.new
	end

	def edit
		@product = Product.find(params[:id])
	end

	def update

	end

	def create
		@product = Product.create(valid_product)
		redirect_to products_path
	end

	def destroy
		@product = Product.find(params[:id])
		@product.destroy
		redirect_to products_path
	end

	private

	def valid_product
		params.require(:product).permit(:name, :reference, :quantity, :companies_id)
	end
end