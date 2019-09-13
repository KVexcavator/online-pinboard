class AddSlugToBoards < ActiveRecord::Migration[6.0]
  def change
    add_column :boards, :slug, :string
  end
end
