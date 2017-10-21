class Room < ApplicationRecord
  belongs_to :user
	has_many :photos, dependent: :destroy
	has_many :reservations, dependent: :destroy

	geocoded_by :address
	after_validation :geocode, if: :address_changed?

	validates :home_type, presence: true
	validates :room_type, presence: true
	validates :accommodate, presence: true
	def is_ready?
		!price.blank? && !listing_name.blank? && !photos.blank? && !address.blank? && !summary.blank?
	end
	def cover_photo(size)
		if self.photos.length > 0
			self.photos[0].image.url()
		else
			"blank.jpg"
		end
	end
end
