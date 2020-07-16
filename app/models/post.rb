class Post < ApplicationRecord
	belongs_to :category
	validates :title, uniqueness: true,
                    length: { minimum: 5 }
end
