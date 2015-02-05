class CreateFeedbacks < ActiveRecord::Migration
  def self.up
    create_table :feedbacks do |t|
      t.references :feedback_giver, polymorphic: true
      t.text :subject
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :feedbacks
  end

end
