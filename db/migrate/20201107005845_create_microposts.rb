class CreateMicroposts < ActiveRecord::Migration[6.0]
  def change
    create_table :microposts do |t|
      t.text :content
      t.references :title, null: false, foreign_key: true

      t.timestamps
    end
    add_index :microposts, [:title_id, :created_at]
  end
end
