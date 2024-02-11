class CreateSentEmails < ActiveRecord::Migration[7.1]
  def change
    create_table :sent_emails do |t|
      t.string :from
      t.text :to
      t.string :subject
      t.text :bodyhtml
      t.datetime :sent_at

      t.timestamps
    end
  end
end
