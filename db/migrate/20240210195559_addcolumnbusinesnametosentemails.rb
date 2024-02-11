class Addcolumnbusinesnametosentemails < ActiveRecord::Migration[7.1]
  def change
    add_column :sent_emails, :business_name, :string, null: false
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
