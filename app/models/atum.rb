class Atum < ActiveRecord::Base
  attr_accessible :data, :numero, :ordinaria, :arquivo
  has_attached_file :arquivo, :styles => { :miniatura => "300x300>"}
end
