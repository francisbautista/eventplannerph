class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.integer  "uploadable_id"
      t.string   "uploadable_type"
      t.timestamps
    end
  end
end
