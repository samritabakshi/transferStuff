class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :status
      t.string :phone_number
      t.boolean :is_verified ,default: false
      t.string :token
      t.timestamps
    end
  end
end
