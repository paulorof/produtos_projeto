class CreateBanners < ActiveRecord::Migration
  def self.up
    create_table :banners do |t|
      t.string :nome
      t.integer :tipo_banner_id

      t.timestamps
    end
  end

  def self.down
    drop_table :banners
  end
end
