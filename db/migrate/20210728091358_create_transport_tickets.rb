class CreateTransportTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :transport_tickets do |t|
      t.references :request, null: false, foreign_key: true
      t.references :department, null: false, foreign_key: true

      t.timestamps
    end
  end
end
