class AddDocumentPathToEducations < ActiveRecord::Migration
  def change
    add_column :educations, :document_path, :string
  end
end
