class AddEnderecoToMapas < ActiveRecord::Migration
  def self.up
    add_column :mapas, :endereco, :string
  end

  def self.down
    remove_column :mapas, :endereco
  end
end
