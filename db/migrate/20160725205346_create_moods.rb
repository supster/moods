class CreateMoods < ActiveRecord::Migration[5.0]
  def change
    create_table :moods do |t|
      t.timestamps  null: false
      t.belongs_to :emotion, index: true, foreign_key: true
      t.string     :cause
      t.string     :cessation
    end
  end
end
