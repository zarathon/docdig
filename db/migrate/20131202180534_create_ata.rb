class CreateAta < ActiveRecord::Migration
  def change
    create_table :ata do |t|
      t.string :numero
      t.date :data
      t.boolean :ordinaria

      t.timestamps
    end
  end
end
