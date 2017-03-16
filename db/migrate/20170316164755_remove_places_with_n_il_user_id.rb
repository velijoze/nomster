class RemovePlacesWithNIlUserId < ActiveRecord::Migration
  def change
  	Place.delete_all(:user_id => nil)
  end
end
