class CreateSketches < ActiveRecord::Migration[5.0]
  def change
    create_table :sketches do |t|
      t.string :title
      t.string :description
      t.text :code
    end
  end
end
