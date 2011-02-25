class CreateUsuarios < ActiveRecord::Migration
  def self.up
    create_table "usuarios", :force => true do |t|
      t.string   :login,                     :limit => 40
      t.string   :name,                      :limit => 100, :default => '', :null => true
      t.string   :email,                     :limit => 100
      t.string   :crypted_password,          :limit => 40
      t.string   :salt,                      :limit => 40
      t.datetime :created_at
      t.datetime :updated_at
      t.string   :remember_token,            :limit => 40
      t.datetime :remember_token_expires_at


    end
    add_index :usuarios, :login, :unique => true
    Usuario.create(:name => 'admin', :email => 'admin@site.com', :login => 'admin', :password => 'admin', :password_confirmation  => 'admin')
  end

  def self.down
    drop_table "usuarios"
  end
end
