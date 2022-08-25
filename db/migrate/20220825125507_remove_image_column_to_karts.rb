class RemoveImageColumnToKarts < ActiveRecord::Migration[7.0]
  def change
    remove_column :karts, :image
  end
end
