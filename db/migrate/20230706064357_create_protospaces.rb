class CreateProtospaces < ActiveRecord::Migration[7.0]
  def change
    create_table :protospaces do |t|
      t.string :name
      t.text :catchcopy
      t.text :concept
      t.text :image


      t.timestamps
    end
  end
end
