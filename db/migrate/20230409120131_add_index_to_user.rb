class AddIndexToUser < ActiveRecord::Migration[7.0]
  def change
    add_index :users, :updated_at
  end
end
