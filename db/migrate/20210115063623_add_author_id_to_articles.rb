class AddAuthorIdToArticles < ActiveRecord::Migration[6.1]
  def change
    change_table :articles do |t|
      t.integer :author_id
    end
  end
end
