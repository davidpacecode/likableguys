class AddDqToRaces < ActiveRecord::Migration[8.0]
  def change
    add_column :races, :dq, :boolean, default: false
  end
end
