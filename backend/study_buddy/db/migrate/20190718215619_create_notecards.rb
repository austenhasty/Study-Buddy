class CreateNotecards < ActiveRecord::Migration[5.2]
  def change
    create_table :notecards do |t|
      t.string :term
      t.string :definition
      t.integer :topic_id

      t.timestamps
    end
  end
end
