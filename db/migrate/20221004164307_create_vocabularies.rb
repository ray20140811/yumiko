class CreateVocabularies < ActiveRecord::Migration[7.0]
  def change
    create_table :vocabularies do |t|
      t.string :japanese
      t.string :english
      t.string :kanji
      t.string :chinese

      t.timestamps
    end
  end
end
