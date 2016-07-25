class CreateEmotions < ActiveRecord::Migration[5.0]
  def change
    create_table :emotions do |t|
      t.timestamps null: false
      t.string  :description
      t.integer :emotion_type_id, default: 0
    end
  end
end
