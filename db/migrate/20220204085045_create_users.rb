class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name,               null: false
      t.string :nickname,           null: false
      t.string :email,              null: false
      t.string :sex,                null: false
      t.integer :age,               null: false
      t.string :encrypted_password, null: false
      t.integer :category_id,       null: false
      t.timestamps
    end
  end
end
