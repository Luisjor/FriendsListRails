class CreateFiends < ActiveRecord::Migration[7.0]
  def change
    create_table :fiends do |t|

      t.timestamps
    end
  end
end
