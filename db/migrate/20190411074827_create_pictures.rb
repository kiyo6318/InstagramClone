class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.text :word
      t.text :image

      t.timestamps
    end
  end
end
