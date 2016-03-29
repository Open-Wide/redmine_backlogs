class RemoveHistory < ActiveRecord::Migration
  def self.up
    drop_table :rb_issue_history
  end

  def self.down
    create_table :rb_issue_history do |t|
        t.column :issue_id,    :integer, :default => 0,  :null => false
        t.text   :history
      end
      add_index :rb_issue_history, :issue_id, :unique => true
  end
end
