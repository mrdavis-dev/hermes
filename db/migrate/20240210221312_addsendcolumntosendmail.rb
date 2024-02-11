class Addsendcolumntosendmail < ActiveRecord::Migration[7.1]
  def change
    add_column :sent_emails, :enviado, :string, null: false
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
