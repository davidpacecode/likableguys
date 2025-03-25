class CreateSwimMeets < ActiveRecord::Migration[8.0]
  def change
    create_table :swim_meets do |t|
      t.string :name
      t.string :location
      t.string :address
      t.string :url
      t.date :start_date
      t.date :end_date
      t.text :description

      t.timestamps
    end
  end
end
