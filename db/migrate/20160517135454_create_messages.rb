class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :title
      t.string :job
      t.association :status
      t.string :customer
      t.text :description
   	  t.attachment :image
   	  t.string :image_file_name
   	  t.string :image_content_type
   	  t.integer :image_file_size
   	  t.dateimte :image_updated_at
      t.timestamps null: false
      def up
    add_attachment :messages, :image
  end

  def down
    remove_attachment :messages, :image
  end
end
    end
  end

end
