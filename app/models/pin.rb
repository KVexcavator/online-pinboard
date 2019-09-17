class Pin < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :board

  mount_uploader :image, ImageUploader

  paginates_per 10
end
