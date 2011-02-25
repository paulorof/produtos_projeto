class AddBannerIdToMarcas < ActiveRecord::Migration
  def self.up
    add_column :marcas, :banner_id, :integer
  end

  def self.down
    remove_column :marcas, :banner_id
  end
end
