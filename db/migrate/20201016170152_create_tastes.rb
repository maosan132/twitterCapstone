class CreateTastes < ActiveRecord::Migration[6.0]
  def change
    create_table :tastes do |t|
      t.references :user, references: :users, foreign_key: {to_table: :users}
      t.text :text

      t.timestamps
    end
  end
end
