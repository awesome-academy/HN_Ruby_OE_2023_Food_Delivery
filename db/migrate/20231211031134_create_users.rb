class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.integer :gender
      t.date :dob
      t.string :phoneNum, null: true
      t.string :address, null: true
      t.integer :role
      t.string :activation_digest
      t.boolean :activated, default: false
      t.datetime :activated_at
      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
