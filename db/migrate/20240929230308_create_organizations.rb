class CreateOrganizations < ActiveRecord::Migration[7.1]
  def change
    create_table :organizations, id: false do |t| # id: false disables the default 'id' column
      t.string :org_name, null: false, limit: 255
      t.string :street, null: false, limit: 255
      t.string :city, null: false, limit: 100
      t.string :org_state, null: false, limit: 2, default: 'CO'
      t.integer :zipcode, null: false
      t.string :email, null: false, limit: 255, primary_key: true # Defining email as the primary key
      t.string :phoneNumber, limit: 15
      t.string :webLink, limit: 2050
      t.text :servicesSummary, null: false
      t.decimal :avgStarValue, precision: 1, scale: 1
      t.timestamps default: -> { 'CURRENT_TIMESTAMP' } # Note: This is a Rails shortcut that automatically creates two columns in the table. SO COOL! LOL
    end
  end
end
