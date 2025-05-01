class RemoveUserForeignKeyFromSwimMeets < ActiveRecord::Migration[8.0]
  def change
    remove_foreign_key :swim_meets, :users
  end
end
