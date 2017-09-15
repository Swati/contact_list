class CreatePhoneNumbers < ActiveRecord::Migration[5.1]
  def change
    create_table :phone_numbers do |t|
      t.string :number, null: false
      t.belongs_to :contact, null:false, index: true, foreign_key: true
      t.timestamps
    end
  end
end
