class AddStatusToAvatarMemories < ActiveRecord::Migration[6.0]
  def change
    add_column :avatar_memories, :status, :integer, default: 0
  end
end
