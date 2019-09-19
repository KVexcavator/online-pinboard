class Pin < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  # behave
  belongs_to :board
  # rmagik to MagickImage
  mount_uploader :image, ImageUploader
  # gem 'kaminari'
  paginates_per 10
  #search params
  searchable do
    text :name, :image
    integer :board_id
  end
  # search method
  def self.search_pin(search_key)
    @search = self.search do
      fulltext "#{search_key}"
    end
    @search.results
  end
end
