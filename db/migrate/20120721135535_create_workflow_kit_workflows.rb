class CreateWorkflowKitWorkflows < ActiveRecord::Migration
  def change
    create_table :workflow_kit_workflows do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
