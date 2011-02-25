class Marca < ActiveRecord::Base
  
  has_many :produtos

  belongs_to :marca
  
  has_attached_file :foto,
                    :styles => {:pequena => "80x80", :grande => "250x180"},
                    :url  => "/images/marcas/:class/:attachment/:id/:style_:basename.:extension",
                    :path => ":rails_root/public/images/marcas/:class/:attachment/:id/:style_:basename.:extension",
                    :content_type => ['image/jpeg', 'image/png','image/gif'],
                    :default_url => "/images/produto_sem_foto.jpg"

  validates_attachment_content_type :foto, :content_type => ['image/jpeg', 'image/png','image/gif']
  
  validates_attachment_size :foto, :less_than => 1.megabyte
end


