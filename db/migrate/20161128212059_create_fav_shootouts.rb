class CreateFavShootouts < ActiveRecord::Migration[5.0]
  def change
    create_table :fav_shootouts do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :shootout, foreign_key: true

      t.timestamps
    end
  end
end
