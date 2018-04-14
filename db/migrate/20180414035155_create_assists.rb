class CreateAssists < ActiveRecord::Migration[5.1]
  def change
    create_table :assists do |t|
      t.string :service
      t.boolean :fulfilled

      t.timestamps
    end
  end
end
