class MigrateToCarrierWave < ActiveRecord::Migration
  def up
    remove_column :attachments, :file_content_type
    remove_column :attachments, :file_file_size
    remove_column :attachments, :file_updated_at
  end

  def down
    add_column :attachments, :file_content_type, :string
    add_column :attachments, :file_file_size, :integer
    add_column :attachments, :file_updated_at, :datetime
  end
end
