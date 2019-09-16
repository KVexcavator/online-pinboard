class AddImageCacheToPins < ActiveRecord::Migration[6.0]
  def change
    add_column :pins, :image_cache, :string
  end
end
