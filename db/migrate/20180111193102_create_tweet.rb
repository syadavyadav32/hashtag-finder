class CreateTweet < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.text :body
    end
  end
end
