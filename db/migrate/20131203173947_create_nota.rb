class CreateNota < ActiveRecord::Migration
  def change
    create_table :nota do |t|
      t.string :numero
      t.date :data
      t.string :empresa
      t.float :valor

      t.timestamps
    end
  end
end
