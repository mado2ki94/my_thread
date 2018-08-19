class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :my_thread, foreign_key: true
      t.string :content
      t.string :string

      t.timestamps
    end
  end
end
