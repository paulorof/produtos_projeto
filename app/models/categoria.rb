class Categoria < ActiveRecord::Base
  has_and_belongs_to_many :produtos
  
  has_attached_file :foto,
                    :styles => {:pequena => "100x100", :grande => "410x300"},
                    :url  => "/images/categorias/:class/:attachment/:id/:style_:basename.:extension",
                    :path => ":rails_root/public/images/categorias/:class/:attachment/:id/:style_:basename.:extension",
                    :content_type => ['image/jpeg', 'image/png','image/gif'],
                    :default_url => "/images/produto_sem_foto.jpg"

  validates_attachment_content_type :foto, :content_type => ['image/jpeg', 'image/png','image/gif']

  validates_attachment_size :foto, :less_than => 1.megabyte
  
end
