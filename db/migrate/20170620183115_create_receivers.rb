class CreateReceivers < ActiveRecord::Migration
  def change
    create_table :receivers do |t|
      t.string :name
      t.string :bloodtype
      t.string :donationtype
      t.integer :units
      t.string :timestart
      t.string :timeend
      t.string :timestart2
      t.string :timeend2
      t.string :days, array: true, default: []
      t.string :hospital
      t.string :street
      t.string :number
      t.string :colony
      t.string :zipcode
      t.string :state
      t.string :city
      t.string :contact
      t.string :phone
      t.string :contact2
      t.string :phone2

      t.timestamps null: false
    end
  end
end
