class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.boolean :hot, default: false
      t.boolean :not, default: false
      t.belongs_to :user, index: true
      t.belongs_to :fact, index: true

      t.timestamps
    end
  end
end
