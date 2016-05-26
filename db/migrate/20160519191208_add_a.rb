class AddA < ActiveRecord::Migration
  def change
  	add_column :messages, :status, :association
  end
end
