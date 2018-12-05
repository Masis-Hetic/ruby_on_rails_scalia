class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def self.up
		change_table :users do |t|
			t.string :first_name
			t.string :last_name
		end

		add_reference :users, :companies, index: true, foreign_key: true
  end

	def self.down
		change_table :users do |t|
			t.remove :first_name
			t.remove :last_name
		end

		remove_reference :users, :companies, index: true, foreign_key: true
	end
end
