class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :total
      t.integer :author_id

      t.timestamps
    end
  end
end
