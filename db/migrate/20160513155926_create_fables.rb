class CreateFables < ActiveRecord::Migration
  def change
    create_table :fables do |t|
    	t.string :title
    	t.integer :author_id
      t.timestamps null: false
    end
  end
end
