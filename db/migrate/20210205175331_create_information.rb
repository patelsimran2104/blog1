class CreateInformation < ActiveRecord::Migration[6.1]
  def change
    create_table :information do |t|
      t.string :fullname
      t.date :dob
      t.integer :age
      t.string :personalemail
      t.string :hobby
      t.string :address
      t.string :personalphoneNo
      t.string :gender

      t.string :role
      t.string :worklocation
      t.string :professionalemail
      t.string :contry_code
      t.string :professionalphoneNo
      t.string :qualification
      t.text :college
      t.text :city
      t.text :state
      t.string :socialId
      
      t.timestamps
    end
  end
end
