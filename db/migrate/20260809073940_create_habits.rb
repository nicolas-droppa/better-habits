class CreateHabits < ActiveRecord::Migration[7.1]
  def change
    create_table :habits do |t|
      t.string :title
      t.text :description
      t.integer :duration_in_min
      t.datetime :scheduled_at

      t.timestamps
    end
  end
end
