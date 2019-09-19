class Board < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  has_many :pins
  belongs_to :user

  # search
  searchable do
    text :title, :description
    integer :user_id
  end
end
