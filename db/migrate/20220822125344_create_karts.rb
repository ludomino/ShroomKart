class CreateKarts < ActiveRecord::Migration[7.0]
  def change
    create_table :karts do |t|
      t.string :name
      t.integer :price
      t.string :special_skills
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
