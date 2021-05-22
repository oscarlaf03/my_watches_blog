class AddViewsToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :views, :bigint, default: 0
  end
end
