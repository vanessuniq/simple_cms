class CreatePages < ActiveRecord::Migration[6.0]
  def change
    create_table :pages do |t|
      t.string :name
      t.string :permalink
      t.references :subject, null: false, foreign_key: true
      t.integer :position
      t.boolean :visible
      t.text :content

      t.timestamps
    end
  end
end
