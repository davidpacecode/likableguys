class CreateRaces < ActiveRecord::Migration[8.0]
  def change
    create_table :races do |t|
      t.string :event
      t.integer :event_no
      t.string :age_group
      t.string :course
      t.integer :heat
      t.integer :lane
      t.decimal :seed_time
      t.decimal :final_time
      t.date :race_date
      t.references :swim_meet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
