class AddFieldInPosts < ActiveRecord::Migration[5.2]
  def change
  	add_column :posts, :description, :text
  	add_column :posts, :cover_image, :string
  	add_column :posts, :published_at, :date
  end
end
