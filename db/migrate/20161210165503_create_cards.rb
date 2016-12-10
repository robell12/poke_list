class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.string :name, null: false
      t.string :power
      t.string :kind
      t.string :value
      t.string :description
      t.string :img
      t.belongs_to :collection

      t.timestamps
    end
  end
end
