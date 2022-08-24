class AddColumnPhotoToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :photo, :binary
  end
end
