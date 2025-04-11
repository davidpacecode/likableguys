class CreateSwimMeets < ActiveRecord::Migration[8.0]
  def change
    create_table :swim_meets do |t|
      t.string :name
      t.string :venue
      t.string :address
      t.date :start_date
      t.date :end_date
      t.string :course

      t.timestamps
    end
  end
end
