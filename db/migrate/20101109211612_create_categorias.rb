class CreateCategorias < ActiveRecord::Migration
  def self.up
    create_table :categorias do |t|
      t.string :nome
      t.text :descricao
      t.string :foto_file_name, :string
      t.string :foto_content_type, :string
      t.integer :foto_file_size, :integer
      t.datetime :foto_updated_at, :datetime

      t.timestamps
    end
  end

  def self.down
    drop_table :categorias
  end
end
