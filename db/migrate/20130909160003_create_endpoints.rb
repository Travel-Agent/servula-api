class CreateEndpoints < ActiveRecord::Migration
  def change
    create_table :endpoints do |t|
      t.string :name
      t.string :path
      t.string :method
      t.text :description
      t.text :parameters
      t.text :example

      t.timestamps
    end
  end
end
