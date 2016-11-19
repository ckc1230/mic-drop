class CreateShootouts < ActiveRecord::Migration[5.0]
  def change
    create_table :shootouts do |t|

      t.timestamps
    end
  end
end
