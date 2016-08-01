class CreateRepositories < ActiveRecord::Migration[5.0]
  def change
    create_table :repositories do |t|
      t.string :slug, null: false
      t.references :organization, foreign_key: true, null: false, index: true

      t.timestamps
    end
  end
end
