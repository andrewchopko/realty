class ChangeColumnPublicInFeedback < ActiveRecord::Migration
  def change
    change_column :feedbacks, :public, :boolean, :default => false
  end
end
