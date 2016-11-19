class CreateShootoutMicrophones < ActiveRecord::Migration[5.0]
  def change
    create_table :shootout_microphones do |t|
      t.belongs_to :shootout, foreign_key: true
      t.belongs_to :microphone, foreign_key: true

      t.timestamps
    end
  end
end
