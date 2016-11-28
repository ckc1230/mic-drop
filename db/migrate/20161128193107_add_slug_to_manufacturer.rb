class AddSlugToManufacturer < ActiveRecord::Migration[5.0]
  def change
  	add_column :manufacturers, :slug, :string
  	add_index :manufacturers, :slug, unique: true
  end
end
