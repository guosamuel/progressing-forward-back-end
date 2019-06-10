class AddPercentageToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :percentage, :integer
  end
end
