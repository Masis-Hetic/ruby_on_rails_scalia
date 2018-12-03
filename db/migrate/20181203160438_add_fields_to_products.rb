class AddFieldsToProducts < ActiveRecord::Migration[5.2]
  def self.up
		change_table :products do |t|
			t.string :name
			t.integer :quantity
			t.integer :reference
		end

		add_reference :products, :companies, index: true, foreign_key: true
  end

	def self.down
		change_table :products do |t|
			t.remove :name
			t.remove :quantity
			t.remove :reference
		end

		remove_reference :products, :companies, index: true, foreign_key: true
	end
end
