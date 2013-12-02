class CreatePortaria < ActiveRecord::Migration
  def change
    create_table :portaria do |t|
      t.string :numero
      t.date :data
      t.text :observacao

      t.timestamps
    end
  end
end
