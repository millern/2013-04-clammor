class CreateGroups < ActiveRecord::Migration
  def up
    create_table :groups do |t|
      t.string :motto
      t.string :name
    end
  end

  def down
    drop_table :groups
  end
end
