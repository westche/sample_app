class AddRunDateToRun < ActiveRecord::Migration[5.2]
  def change
    add_column :runs, :Run_Date, :date
  end
end
