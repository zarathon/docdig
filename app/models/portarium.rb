class Portarium < ActiveRecord::Base
  attr_accessible :data, :numero, :observacao, :arquivo
  has_attached_file :arquivo, :styles => { :miniatura => "300x300>"}
end
