class AddSortOrderToTagsTimeCuts < ActiveRecord::Migration[8.0]
  def change
    add_column :tags_time_cuts, :sort_order, :integer
  end
end
