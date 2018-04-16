class AddServiceToAssists < ActiveRecord::Migration[5.1]
  def change
    add_reference :assists, :service, foreign_key: true
  end
end
