class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :userid, null: false
      t.string :name, null: false
      t.string :email, uniqueness: true, null: false
      t.string :password_digest, null: false

      t.timestamps null: false
    end
  end
end
