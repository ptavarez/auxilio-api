class AddDriverToAssists < ActiveRecord::Migration[5.1]
  def change
    add_reference :assists, :driver, foreign_key: true
  end
end
