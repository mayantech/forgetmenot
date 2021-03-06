# Author:: Renat Akhmerov (mailto:renat@brainhouse.ru)
# Author:: Yury Kotlyarov (mailto:yura@brainhouse.ru)
# License:: MIT License

class AddingIndexesForDynamicAttributes < ActiveRecord::Migration
  def self.up
    add_index :dynamic_attribute_values, :dynamic_attribute_id
    add_index :dynamic_attribute_values, :contact_id
  end

  def self.down
    remove_index :dynamic_attribute_values, :dynamic_attribute_id
    remove_index :dynamic_attribute_values, :contact_id
  end
end
