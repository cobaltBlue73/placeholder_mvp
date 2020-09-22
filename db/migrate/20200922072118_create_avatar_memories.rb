class CreateAvatarMemories < ActiveRecord::Migration[6.0]
  def change
    create_table :avatar_memories do |t|
      t.references :avatar, null: false, foreign_key: true
      t.references :memory, null: false, foreign_key: true

      t.timestamps
    end
  end
end
