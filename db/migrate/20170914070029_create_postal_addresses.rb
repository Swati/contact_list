class CreatePostalAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :postal_addresses do |t|
      t.string :address
      t.belongs_to :contact, null:false, index: true, foreign_key: true
      t.timestamps
    end
  end
end
