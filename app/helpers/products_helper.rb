module ProductsHelper
	def self.products
		@product_array = Array.new

		@prod = Product.all

		@prod.each do |p|
			id         = p.id
			name       = p.name
			quantity   = p.quantity
			reference  = p.reference
			company_id = p.companies_id.to_s.html_safe
			company    = Product.company_name(company_id).name

			@tab = Product.new(:name => name, :quantity => quantity, :reference => reference, :company => company, :id => id)
			@product_array.push(@tab)
		end
		return @product_array
	end
end