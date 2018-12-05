module UsersHelper
	def self.users
		@users_array = Array.new

		@all_users = User.all

		@all_users.each do |u|
			id         = u.id
			first_name = u.first_name
			last_name  = u.last_name
			company_id = u.companies_id.to_s.html_safe
			company    = User.company_name(company_id).name

			@array = User.new(:id => id, :first_name => first_name, :last_name => last_name, :company => company)
			@users_array.push(@array)
		end

		return @users_array
	end
end