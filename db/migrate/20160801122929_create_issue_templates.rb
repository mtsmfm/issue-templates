class CreateIssueTemplates < ActiveRecord::Migration[5.0]
  def change
    enable_extension 'uuid-ossp'

    create_table :issue_templates, id: :uuid do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.references :repository, foreign_key: true, null: false, index: true

      t.timestamps
    end
  end
end
