class CreateWorkflowKitParameters < ActiveRecord::Migration
  def change
    create_table :workflow_kit_parameters do |t|
      t.string :key
      t.string :value
      t.references :workflow_kit_parameterable, polymorphic: true

      t.timestamps
    end
  end
end
