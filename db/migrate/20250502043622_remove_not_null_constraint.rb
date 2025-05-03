class RemoveNotNullConstraint < ActiveRecord::Migration[8.0]
  def change
    change_column_null :swim_meets, :user_id, true
  end
end
