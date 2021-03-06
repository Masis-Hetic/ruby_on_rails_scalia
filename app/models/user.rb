class User < ActiveRecord::Base

	belongs_to :company, optional: true, dependent: :destroy
	attr_accessor :company
	validates :last_name, :first_name, presence: true

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
