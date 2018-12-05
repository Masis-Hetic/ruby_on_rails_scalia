class Company < ApplicationRecord
	has_many :products, foreign_key: 'companies_id', dependent: :destroy
	has_many :users, foreign_key: 'companies_id', dependent: :destroy
end
