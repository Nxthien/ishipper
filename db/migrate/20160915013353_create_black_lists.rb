class CreateBlackLists < ActiveRecord::Migration[5.0]
  def change
    create_table :black_lists do |t|
      t.integer :black_list_user_id
      t.integer :owner_id

      t.timestamps
    end
  end
end
