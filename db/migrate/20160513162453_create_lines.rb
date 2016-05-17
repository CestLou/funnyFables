class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
    	t.string :text, default: ""
    	t.string :user_input, default: ""
    	t.string :kind
    	t.integer :fable_id
    end
  end
end
