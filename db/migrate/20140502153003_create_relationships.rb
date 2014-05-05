class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :friend_id
      t.bool :accepted

      t.timestamps
    end
  end
end
