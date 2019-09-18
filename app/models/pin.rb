class Pin < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  # behave
  belongs_to :board
  # rmagik to MagickImage
  mount_uploader :image, ImageUploader
  # gem 'kaminari'
  paginates_per 10
end
