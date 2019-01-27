class CreateRuns < ActiveRecord::Migration[5.2]
  def change
    create_table :runs do |t|
      t.references :user, foreign_key: true
      t.string :Run_Type
      t.string :Location
      t.time :Start_Time
      t.decimal :Pace
      t.decimal :Miles

      t.timestamps
    end
  end
end
