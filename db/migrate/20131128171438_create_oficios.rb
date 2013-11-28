class CreateOficios < ActiveRecord::Migration
  def change
    create_table :oficios do |t|
      t.string :numero
      t.datetime :data
      t.string :codigo
      t.text :observacao
      t.boolean :enviado

      t.timestamps
    end
  end
end
