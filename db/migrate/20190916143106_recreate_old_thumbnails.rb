class RecreateOldThumbnails < ActiveRecord::Migration[6.0]
  def up
    Pin.all.each {|p| p.image.recreate_versions! if p.image}
  end
  def down
  end
end
