class CreateDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :details do |t|
      t.column :address, :string
      t.column :phone, :integer
      t.column :website, :string
      t.column :hours, :string
      t.column :store_id, :integer

      t.timestamps
    end
  end
end
