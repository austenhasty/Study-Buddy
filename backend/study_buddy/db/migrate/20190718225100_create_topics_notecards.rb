class CreateTopicsNotecards < ActiveRecord::Migration[5.2]
  def change
    create_table :topics_notecards do |t|
      t.integer :topic_id
      t.integer :notecard_id

      t.timestamps
    end
  end
end
