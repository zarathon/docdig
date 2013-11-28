class Oficio < ActiveRecord::Base
  attr_accessible :codigo, :data, :enviado, :numero, :observacao, :arquivo
  has_attached_file :arquivo, :styles => { :miniatura => "300x300>"}
end
