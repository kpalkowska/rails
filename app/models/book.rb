class Book < ApplicationRecord
	default_scope { order('id ASC') }
	validates :name, :description, :price, :author_id, :img_url, presence: true
	validates :name, :description, length: { minimum: 3 }
	validates :price, length: { minimum: 2 }, numericality: true
end
