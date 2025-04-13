class CreateTagsTimeCuts < ActiveRecord::Migration[8.0]
  def change
    create_table :tags_time_cuts do |t|
      t.string :age_group
      t.string :gender
      t.integer :distance
      t.string :stroke
      t.string :course
      t.decimal :tags_time
      t.decimal :bonus_time

      t.timestamps
    end
  end
end
