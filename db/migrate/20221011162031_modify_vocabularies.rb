class ModifyVocabularies < ActiveRecord::Migration[7.0]
  def change
	add_column :vocabularies, :sentence, :text
  end
end
