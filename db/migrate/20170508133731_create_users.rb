class CreateUsers < ActiveRecord::Migration[4.2]
  def change
  	create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :password_digest, null: false #observar que ya no se llama ":password" como lo usamos en usuarios dummy
      t.timestamps  
    end
  end
end
