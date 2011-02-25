class CreateCategoriasProdutosJoin < ActiveRecord::Migration
  def self.up
    create_table :categorias_produtos, :id => false do |t|
      t.integer :categoria_id
      t.integer :produto_id
    end
  end

  def self.down
    drop_table :categorias_produtos
  end
end
