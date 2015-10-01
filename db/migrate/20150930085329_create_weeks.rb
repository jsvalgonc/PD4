class CreateWeeks < ActiveRecord::Migration
  def change
    create_table :weeks do |t|
      t.date :first_day

      t.timestamps
    end
  end
end
