class CreateFables < ActiveRecord::Migration
  def change
    create_table :fables do |t|
    	t.string :title
      t.timestamps null: false
    end
  end
end
