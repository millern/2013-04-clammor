class CreateSubscriptions < ActiveRecord::Migration
  def up
    create_table :subscriptions do |t|
      t.datetime :renew_date
      t.belongs_to :user
      t.belongs_to :group

      t.timestamps
    end
  end

  def down
    drop_table :subscriptions
  end
end
