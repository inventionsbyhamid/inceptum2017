class AddDayToEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :day, :integer
  end
end
