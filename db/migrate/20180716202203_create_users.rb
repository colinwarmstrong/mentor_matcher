class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.bigint :phone_number
      t.string :city
      t.string :username
      t.string :password_digest
      t.integer :role, default: 0

      t.timestamps
    end
  end
end
