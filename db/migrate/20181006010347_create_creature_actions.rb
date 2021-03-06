class CreateCreatureActions < ActiveRecord::Migration[5.2]
  def change
    create_table :creature_actions do |t|
      t.belongs_to :creature, foreign_key: true
      t.string :damage_dice, null: false
      t.string :name, null: false
      t.text :description, null: false
      t.integer :range, null: false

      t.timestamps
    end
  end
end
