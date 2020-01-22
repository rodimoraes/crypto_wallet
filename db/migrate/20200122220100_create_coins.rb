class CreateCoins < ActiveRecord::Migration[5.2]
  def change
    create_table :coins do |t|
      t.string :description
      t.string :acronym
      t.string :url_image
      t.float :dollar_value

      t.timestamps
    end
  end
end
