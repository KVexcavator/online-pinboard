class Board < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  has_many :pins
  belongs_to :user
end
