class CreateReceivers < ActiveRecord::Migration
  def change
    create_table :receivers do |t|
      t.string :name
      t.string :bloodtype
      t.string :donationtype
      t.integer :units
      t.integer :timestart
      t.integer :timeend
      t.integer :timestart2
      t.integer :timeend2
      t.string :days
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
