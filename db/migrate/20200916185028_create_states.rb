class CreateStates < ActiveRecord::Migration[5.2]
  def change
    create_table :states do |t|
      t.boolean :completed
      t.references :habit, foreign_key: true

      t.timestamps
    end
  end
end
