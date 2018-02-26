class CreateFormularios < ActiveRecord::Migration[5.1]
  def change
    create_table :formularios do |t|
      t.string :name
      t.string :color

      t.timestamps
    end
  end
end
