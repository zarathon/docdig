class AddFileToAta < ActiveRecord::Migration
  def change
    add_attachment :ata, :arquivo
  end
end
