class CreateDurations < ActiveRecord::Migration[6.1]
  def change
    create_table :durations do |t|
      t.integer       :no_of_months
      t.string        :display_name
    end
  end
end
