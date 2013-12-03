class Notum < ActiveRecord::Base
  attr_accessible :data, :empresa, :numero, :valor, :arquivo
  has_attached_file :arquivo, :styles => { :miniatura => "300x300>"}
end
