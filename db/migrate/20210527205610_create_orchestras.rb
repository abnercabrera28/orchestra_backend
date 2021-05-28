class CreateOrchestras < ActiveRecord::Migration[6.1]
  def change
    create_table :orchestras do |t|
      t.string :name
      
      t.timestamps
    end
  end
end
