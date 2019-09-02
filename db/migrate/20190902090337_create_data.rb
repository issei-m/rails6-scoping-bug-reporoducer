class CreateData < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.bigint :parent_id, null: true
      t.string :name, null: false
    end
  end
end
