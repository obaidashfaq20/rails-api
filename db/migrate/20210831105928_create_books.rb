class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :image
      t.string :author
      t.string :title

      t.timestamps
    end
  end
end
