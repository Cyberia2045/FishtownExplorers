class DropModelsTable < ActiveRecord::Migration[5.0]
  def up
  	drop_table :models
  end
  def down
  	create_table :models
  end
end
