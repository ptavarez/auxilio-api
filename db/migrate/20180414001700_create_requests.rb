class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.boolean :fulfilled

      t.timestamps
    end
  end
end
