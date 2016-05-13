class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
    	t.string :text
    	t.string :key_word
    end
  end
end
