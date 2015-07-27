class AddPublicationIdToFeedEntry < ActiveRecord::Migration
  def change
    add_column :feed_entries, :publication_id, :integer
  end
end
