class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
        t.string :subject, :limit => 1000 
        t.string :contact
        t.string :message, :limit => 4000  
        t.string :session_id
        t.string :name
      t.timestamps
    end
  end
end
