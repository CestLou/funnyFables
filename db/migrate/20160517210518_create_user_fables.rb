class CreateUserFables < ActiveRecord::Migration
  def change
    create_table :user_fables do |t|
    	t.integer :user_id
    	t.integer :fable_id
    	t.text :answers, array: true, default: []
      t.timestamps null: false
    end
  end
end
