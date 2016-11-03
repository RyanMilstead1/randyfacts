class CreateFacts < ActiveRecord::Migration[5.0]
  def change
    create_table :facts do |t|
      t.string :text, null: false, default: ""
      t.belongs_to :author, index: true

      t.timestamps
    end
  end
end
