class AddCountSnippetToUser < ActiveRecord::Migration
  def change
    add_column :users, :snippets_count, :integer, default: 0
  end
end
