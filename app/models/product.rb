class Product < ApplicationRecord
	belongs_to :company, dependent: :destroy
end
