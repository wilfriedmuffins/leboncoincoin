class AddNameSexAvatarAdminCityRoleToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :sex, :string
    add_column :users, :avatar, :string
    add_column :users, :admin, :boolean, default: false
    #Ex:- :default =>''
    add_column :users, :city, :string
    add_column :users, :role, :string
  end
end
