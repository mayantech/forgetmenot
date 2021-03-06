# Author:: Renat Akhmerov (mailto:renat@brainhouse.ru)
# Author:: Yury Kotlyarov (mailto:yura@brainhouse.ru)
# License:: MIT License

class CreateEmailMessages < ActiveRecord::Migration
  def self.up
    create_table :email_messages do |t|
      t.column :activity_id, :integer
      t.column :subject, :string
      t.column :body, :text
    end
  end

  def self.down
    drop_table :email_messages
  end
end
