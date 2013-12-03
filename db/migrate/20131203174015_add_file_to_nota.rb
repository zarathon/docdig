class AddFileToNota < ActiveRecord::Migration
  def change
    add_attachment :nota, :arquivo
  end
end
