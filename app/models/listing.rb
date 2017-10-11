class Listing < ApplicationRecord
  belongs_to :user

	validates :paper_service, presence: true

	validates :accomodate, presence: string
end
