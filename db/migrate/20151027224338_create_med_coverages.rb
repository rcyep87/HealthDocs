class CreateMedCoverages < ActiveRecord::Migration
  def change
    create_table :med_coverages do |t|
      t.string :carrier
      t.string :plan_level
      t.string :plan_type
      t.string :network_type
      t.integer :pcp_fee
      t.integer :specialist_fee
      t.integer :er_fee
      t.integer :rx_brand_fee
      t.integer :rx_generic_fee
      t.integer :in_net_deduct_ind
      t.integer :in_net_deduct_fam
      t.integer :out_net_deduct_ind
      t.integer :out_net_deduct_fam
      t.integer :co_ins_percent
      t.integer :out_of_pocket_max
      t.date :renewal_date
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
