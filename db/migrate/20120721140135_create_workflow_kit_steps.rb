class CreateWorkflowKitSteps < ActiveRecord::Migration
  def change
    create_table :workflow_kit_steps do |t|
      t.integer :sequence_index
      t.references :workflow_kit_workflow
      t.references :workflow_kit_brick

      t.timestamps
    end
  end
end
