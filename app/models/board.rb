class Board < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  has_many :pins
  belongs_to :user

  # search params
  searchable do
    text :title, :description
    integer :user_id
  end
  # search method
  def self.search_board(search_key)
    @search = self.search do
      fulltext "#{search_key}"
    end
    @search.results
  end
end
