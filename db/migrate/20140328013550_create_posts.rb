class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.date :date
      t.string :subject
      t.text :tag

      t.timestamps
    end
  end
end
