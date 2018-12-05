class Product < ActiveRecord::Base

	belongs_to :company, optional: true
	attr_accessor :company
	validates :name, :quantity, :reference, presence: true

	def self.company_name(id)
		Company.find(id)
	end

	def self.show_one_product(id)
		@product = {}
		@product[:product] = Product.find(id)
		@company = Company.find(@product[:product].companies_id)
		@product[:company] = @company.name

		return @product
	end

end
