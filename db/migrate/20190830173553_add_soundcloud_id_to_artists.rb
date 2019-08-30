class AddSoundcloudIdToArtists < ActiveRecord::Migration[6.0]
  def change
    add_column :artists, :soundcloud_id, :string
  end
end
