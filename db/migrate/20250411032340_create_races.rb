class CreateRaces < ActiveRecord::Migration[8.0]
  def change
    create_table :races do |t|
      t.integer :distance
      t.string :stroke
      t.integer :event_no
      t.integer :heat
      t.integer :lane
      t.decimal :seed_time
      t.decimal :final_time
      t.integer :place
      t.date :race_date
      t.references :swim_meet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
