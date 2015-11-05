class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.string :code
      t.string :source
      t.references :user, index: true

      t.timestamps
    end
  end
end
