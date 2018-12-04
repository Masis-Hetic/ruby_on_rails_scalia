class Product < ApplicationRecord
	belongs_to :company, optional: true, dependent: :destroy
	attr_accessor :company
end
