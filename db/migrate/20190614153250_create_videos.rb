class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.string :videoid
      t.string :addedby
      t.integer :number

      t.timestamps
    end
  end
end
