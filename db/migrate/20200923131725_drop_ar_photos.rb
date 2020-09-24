class DropArPhotos < ActiveRecord::Migration[6.0]
  def up
    drop_table :ar_photos
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
