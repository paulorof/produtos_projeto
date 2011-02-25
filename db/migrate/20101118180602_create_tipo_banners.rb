class CreateTipoBanners < ActiveRecord::Migration
  def self.up
    create_table :tipo_banners do |t|
      t.string :nome

      t.timestamps
    end
  end

  def self.down
    drop_table :tipo_banners
  end
end
