class Pin < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :board
end
