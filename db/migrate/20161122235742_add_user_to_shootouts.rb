class AddUserToShootouts < ActiveRecord::Migration[5.0]
  def change
    add_reference :shootouts, :user, foreign_key: true
  end
end
