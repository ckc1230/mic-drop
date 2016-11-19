class AddManufacturerRefToMicrophone < ActiveRecord::Migration[5.0]
  def change
    add_reference :microphones, :manufacturer, foreign_key: true
  end
end
