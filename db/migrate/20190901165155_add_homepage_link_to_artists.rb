class AddHomepageLinkToArtists < ActiveRecord::Migration[6.0]
  def change
    add_column :artists, :homepage, :string
  end
end
