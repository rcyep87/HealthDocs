class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.string :physician_first
      t.string :physician_last
      t.date :dos
      t.string :reason_for_visit
      t.string :diagnosis
      t.string :dr_notes
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
