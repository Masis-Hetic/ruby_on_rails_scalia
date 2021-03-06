class ProductsController < ApplicationController
	before_action :authenticate_admin!

	def index
		@products = Product.all
	end

	def show
		@product = Product.show_one_product(params[:id])
	end

	def create
		@product = Product.new(valid_product)

		respond_to do |r|
			if @product.save
				r.html { redirect_to product_path(@product.id), notice: "Produit enregistré" }
			else
				r.html { render 'new' }
			end
		end
	end

	def new
		@product = Product.new
	end

	def edit
		@product = Product.find(params[:id])
	end

	def update
		@product = Product.find(params[:id])
		@product.update(valid_product)
		redirect_to product_path
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