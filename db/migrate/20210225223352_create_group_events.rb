class CreateGroupEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :group_events do |t|
      t.string :title
      t.string :description
      t.string :location
      t.date :begins
      t.date :ends
      t.bigint :duration
      t.boolean :published
      t.datetime :deleted

      t.timestamps
    end
  end
end
