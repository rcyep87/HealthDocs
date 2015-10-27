class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.date :time
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
