class AddDateToState < ActiveRecord::Migration[5.2]
  def change
    add_column :states, :date, :datetime
  end
end
