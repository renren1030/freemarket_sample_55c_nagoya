class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string  :name,                null:false
      t.text    :description,         null:false
      t.integer :state,               null:false, default: "0"
      t.integer :shipping_fee,        null:false, default: "0"
      t.integer :shipping_region,     null:false, default: "0"
      t.integer :shipping_date,       null:false, default: "0"
      t.string  :size,                 null:false
      t.string  :price,               null:false
      t.string  :brand
      t.references :user,             index:true,foreign_key: true
      t.timestamps
    end
  end
end


