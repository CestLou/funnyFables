class CreateFableRatings < ActiveRecord::Migration
  def change
    create_table :fable_ratings do |t|
    	t.integer :fable_id
    	t.integer :user_id
    	t.boolean :nsfw, default: :false
      t.timestamps null: false
    end
  end
end
