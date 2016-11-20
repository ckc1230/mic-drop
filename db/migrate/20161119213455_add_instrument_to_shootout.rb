class AddInstrumentToShootout < ActiveRecord::Migration[5.0]
  def change
    add_reference :shootouts, :instrument, foreign_key: true
  end
end
