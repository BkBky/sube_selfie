class CreateAlbums < ActiveRecord::Migration[4.2]
  def change
  	create_table :albums do |t|
      t.belongs_to :user, index: true
      t.string :album, null: false
      
      t.timestamps  
    end
  end
end
