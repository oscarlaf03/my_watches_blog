class AddProfileViewsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :profile_views, :bigint, default: 0
  end
end
