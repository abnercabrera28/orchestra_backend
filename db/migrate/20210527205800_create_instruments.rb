class CreateInstruments < ActiveRecord::Migration[6.1]
  def change
    create_table :instruments do |t|
      t.string :name
      t.string :family
      t.integer :quantity
      t.belongs_to :orchestra

      t.timestamps
    end
  end
end
