class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.text :title
      t.text :description
      t.text :rules
      t.text :location
      t.text :date_time
      
      t.timestamps
    end
  end
end
