class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.integer :number
      t.string :title
      t.string :description 
      t.string :priority
      t.string :status
      t.timestamps
    end
  end
end
