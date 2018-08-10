class AddShowNameToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :show_name, :string
  end
end
