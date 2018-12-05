class User < ApplicationRecord
	belongs_to :company, optional: true, dependent: :destroy
	attr_accessor :company

	def self.company_name(id)
		Company.find(id)
	end

	def self.show_one_user(id)
		@user = {}
		@user[:user] = User.find(id)
		@company = Company.find(@user[:user].companies_id)
		@user[:company] = @company.name

		return @user
	end

end
