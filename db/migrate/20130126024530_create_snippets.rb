class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.string :language,         null: false
      t.string :plain_code,       null: false
      t.string :highlighted_code

      t.timestamps
    end
  end
end
