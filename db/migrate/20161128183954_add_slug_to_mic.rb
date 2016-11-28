class AddSlugToMic < ActiveRecord::Migration[5.0]
  def change
  	add_column :microphones, :slug, :string
  	add_index :microphones, :slug, unique: true
  end
end
