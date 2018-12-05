class Company < ActiveRecord::Base
	has_many :products, foreign_key: 'companies_id', dependent: :destroy
	has_many :users, foreign_key: 'companies_id', dependent: :destroy

	def self.display_products(id)
		@product_array = Array.new
		@product_array = Product.where(:companies_id => id)
		return @product_array
	end

	def self.display_users(id)
		@users_array = Array.new
		@users_array = User.where(:companies_id => id)
		return @users_array
	end

end
