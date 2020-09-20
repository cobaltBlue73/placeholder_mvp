class CreateArPhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :ar_photos do |t|

      t.timestamps
    end
  end
end
