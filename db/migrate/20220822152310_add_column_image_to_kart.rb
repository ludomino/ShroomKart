class AddColumnImageToKart < ActiveRecord::Migration[7.0]
  def change
    add_column :karts, :image, :binary
  end
end
