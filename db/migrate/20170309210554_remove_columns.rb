class RemoveColumns < ActiveRecord::Migration
	def self.up
	  remove_column :photos, :photo
	end
end
