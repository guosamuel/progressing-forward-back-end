class AddProjectLeadIdToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :project_lead_id, :integer
  end
end
