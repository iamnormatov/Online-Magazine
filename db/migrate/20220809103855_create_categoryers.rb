class CreateCategoryers < ActiveRecord::Migration[7.0]
  def change
    create_table :categoryers do |t|
      t.string :name
      t.references :categoriy, null: false, foreign_key: true
      t.timestamps
    end
  end
end
