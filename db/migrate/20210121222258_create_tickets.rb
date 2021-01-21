class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      # t.belongs_to :user, null: false, foreign_key: true
      # t.belongs_to :event, null: false, foreign_key: true
      t.integer :user_id
      t.integer :event_id

      t.timestamps
    end
  end
end
