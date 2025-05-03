class RecreateSwimMeetsWithPrimaryKey < ActiveRecord::Migration[8.0]
  def change
    # Create new table with primary key
    create_table :new_swim_meets do |t|
      # Match your existing columns (except id which will be auto-created)
      t.string :name
      t.string :venue
      t.string :address
      t.date :start_date
      t.date :end_date
      t.string :course
      t.timestamps
    end

    # Copy data from old table to new table
    execute <<-SQL
      INSERT INTO new_swim_meets (name, venue, address, start_date, end_date, course, created_at, updated_at)
      SELECT name, venue, address, start_date, end_date, course, created_at, updated_at
      FROM swim_meets
    SQL

    # Drop the old table
    drop_table :swim_meets

    # Rename the new table to the original name
    rename_table :new_swim_meets, :swim_meets
  end
end
