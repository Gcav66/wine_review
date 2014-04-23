class CreateLogEntries < ActiveRecord::Migration
  def change
    create_table :log_entries do |t|
      t.string :name
      t.string :string
      t.string :rating
      t.string :integer
      t.string :location
      t.string :string
      t.string :comments
      t.string :string
      t.string :tasted_on
      t.string :datetime

      t.timestamps
    end
  end
end
