class CreatePugs < ActiveRecord::Migration[7.0]
  def change
    create_table :pugs do |t|

      t.timestamps
    end
  end
end
