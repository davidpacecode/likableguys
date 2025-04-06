class CreateTimeStandards < ActiveRecord::Migration[8.0]
  def change
    create_table :time_standards do |t|
      t.string :standard_type
      t.string :age_group
      t.integer :age
      t.string :gender
      t.integer :distance
      t.string :stroke
      t.integer :sort_order
      t.string :course
      t.decimal :b
      t.decimal :bb
      t.decimal :a
      t.decimal :aa
      t.decimal :aaa
      t.decimal :aaaa

      t.timestamps
    end
  end
end
