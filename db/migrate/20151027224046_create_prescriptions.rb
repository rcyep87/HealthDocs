class CreatePrescriptions < ActiveRecord::Migration
  def change
    create_table :prescriptions do |t|
      t.string :name
      t.integer :dosage
      t.string :frequency
      t.boolean :brand
      t.date :date_prescribed
      t.date :refill_till
      t.string :rx_notes
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
