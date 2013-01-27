class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.string :name,        null: false
      t.text   :code,        null: false
      t.integer :language_id
            
      t.timestamps
    end
    add_index :snippets, :language_id
  end
end
