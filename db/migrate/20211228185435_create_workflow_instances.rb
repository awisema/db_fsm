class CreateWorkflowInstances < ActiveRecord::Migration[6.1]
  def change
    create_table :workflow_instances do |t|
      t.references :workflow, null: false
      t.string :state

      t.timestamps
    end
  end
end
