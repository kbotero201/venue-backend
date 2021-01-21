class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :performer_name
      t.string :description
      t.string :image
      # t.belongs_to :venue, null: false, foreign_key: true
      t.integer :venue_id

      t.timestamps
    end
  end
end
