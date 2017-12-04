class CreateTemplates < ActiveRecord::Migration[5.1]
  def change
    create_table :templates do |t|
      t.string :name
      t.text :description
      t.text :content
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
