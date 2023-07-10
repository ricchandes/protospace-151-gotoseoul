class AddUserToPrototype < ActiveRecord::Migration[7.0]
  def change
    add_column :prototypes, :user, :integer
  end
end
