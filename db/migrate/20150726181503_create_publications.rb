class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :publication_title

      t.timestamps null: false
    end
  end
end
