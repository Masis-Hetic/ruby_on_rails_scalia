class AddFieldsToCompany < ActiveRecord::Migration[5.2]
  def self.up
		change_table :companies do |t|
			t.string :name
			t.string :director_name
			t.string :city
		end
  end

	def self.down
		change_table :companies do |t|
			t.remove :name
			t.remove :director_name
			t.remove :city
		end
	end
end
