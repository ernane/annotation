class AddCountSnippetToLanguage < ActiveRecord::Migration
  def change
    add_column :languages, :snippets_count, :integer, default: 0
  end
end
