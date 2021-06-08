class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|

      t.timestamps
      t.text :text
      t.references :user,foreign_key: true
      t.references :prototype, foreign_key: true
    end
  end
end
