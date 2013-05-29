class CreateFolloweesFollowers < ActiveRecord::Migration
  def up
    create_table :followees_followers, id: false do |t|
      t.integer :user_id
      t.integer :follower_id
    end
  end

  def down
    drop_table :followees_followers
  end
end
