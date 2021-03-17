class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.text :report
      t.references :hybrid

      t.timestamps
    end
  end
end
