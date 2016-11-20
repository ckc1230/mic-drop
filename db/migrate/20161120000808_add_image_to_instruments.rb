class AddImageToInstruments < ActiveRecord::Migration[5.0]
  def change
  	add_column :instruments, :image, :string
  end
end
