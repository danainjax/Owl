class CreateSupports < ActiveRecord::Migration[5.2]
  def change
    create_table :supports do |t|
      t.text :message

      t.timestamps
    end
  end
end
