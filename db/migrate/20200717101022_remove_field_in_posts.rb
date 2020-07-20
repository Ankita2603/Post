class RemoveFieldInPosts < ActiveRecord::Migration[5.2]
  def change
  	remove_column :posts, :text
  end
end
