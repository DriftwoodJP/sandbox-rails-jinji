class RenameColumnYakushokuType < ActiveRecord::Migration[5.1]
  def change
    rename_column :shains, :yakushoku, :type
  end
end
