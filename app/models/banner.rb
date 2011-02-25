class Banner < ActiveRecord::Base

    has_many :marcas
    belongs_to :tipo_banner

end
