class CreateTweets < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text    :text
      t.text    :image
      t.timestamps
    end
  end
end
