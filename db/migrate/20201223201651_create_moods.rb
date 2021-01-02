class CreateMoods < ActiveRecord::Migration[6.0]
  def change
    create_table :moods do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :emotion

      t.timestamps
    end
  end
end
