class AddFileToPortaria < ActiveRecord::Migration
  def change
    add_attachment :portaria, :arquivo
  end
end
