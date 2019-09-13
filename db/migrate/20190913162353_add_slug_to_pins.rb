class AddSlugToPins < ActiveRecord::Migration[6.0]
  def change
    add_column :pins, :slug, :string
  end
end
