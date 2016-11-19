class CreateMicrophones < ActiveRecord::Migration[5.0]
  def change
    create_table :microphones do |t|
      t.string :model
      t.string :kind
      t.boolean :phantom
      t.string :polar_pattern
      t.string :spec_sheet

      t.timestamps
    end
  end
end
