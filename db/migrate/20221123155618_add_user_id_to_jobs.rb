# frozen_string_literal: true

class AddUserIdToJobs < ActiveRecord::Migration[7.0]
  def change
    add_column :jobs, :user_id, :integer
  end
end
