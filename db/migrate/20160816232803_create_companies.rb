class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :department
      t.string :buzzword
      t.string :slogan

      t.timestamps null: false
    end
  end
end
