class CreateClears < ActiveRecord::Migration[7.0]
  def change
    create_table :clears do |t|

      t.timestamps
    end
  end
end
