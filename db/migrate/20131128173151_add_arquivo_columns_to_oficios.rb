class AddArquivoColumnsToOficios < ActiveRecord::Migration
  def change
    add_attachment :oficios, :arquivo
  end
end
