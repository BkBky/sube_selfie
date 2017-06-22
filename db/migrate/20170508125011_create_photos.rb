class CreatePhotos < ActiveRecord::Migration[4.2]
  def change
  	create_table :photos do |t|
  		t.belongs_to :album
  		t.string :photo
  		t.timestamps  
  	end
  end
end
