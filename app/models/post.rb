class Post < ApplicationRecord
	mount_uploader :cover_image, ImageUploader
	belongs_to :category
	validates :title, uniqueness: true,
                    length: { minimum: 5 }
end
