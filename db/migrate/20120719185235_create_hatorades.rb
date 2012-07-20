class CreateHatorades < ActiveRecord::Migration
  def change
    create_table :hatorades do |t|

      t.timestamps
    end
  end
end
