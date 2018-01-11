class CreateHashtag < ActiveRecord::Migration
  def change
    create_table :hashtags do |t|
      t.string :htname
      t.references :user, index: true, foreign_key: true
      t.references :tweet, index: true, foreign_key: true
    end
  end
end
