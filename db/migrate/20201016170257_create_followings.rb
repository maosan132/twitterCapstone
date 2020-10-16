class CreateFollowings < ActiveRecord::Migration[6.0]
  def change
    create_table :followings do |t|
      t.integer :followedid
      t.integer :followerid

      t.timestamps
    end
  end
end
