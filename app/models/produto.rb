class Produto < ActiveRecord::Base
  has_and_belongs_to_many :categorias
  belongs_to :marca
  belongs_to :banner
  
  has_attached_file :foto,
                    :styles => {:pequena => "100x100", :grande => "450x450"},
                    :url  => "/images/produtos/:class/:attachment/:id/:style_:basename.:extension",
                    :path => ":rails_root/public/images/produtos/:class/:attachment/:id/:style_:basename.:extension",
                    :content_type => ['image/jpeg', 'image/png','image/gif'],
                    :default_url => "/images/produto_sem_foto.jpg"

  validates_attachment_content_type :foto, :content_type => ['image/jpeg', 'image/png','image/gif']

  validates_attachment_size :foto, :less_than => 1.megabyte
  
  def self.busca(busca, page)
      paginate :per_page => 15, :page => page, 
               :conditions => ['nome like ?',"%#{busca}%".upcase],
               :order => 'nome'
  end
  
end
