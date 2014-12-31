class CreateBlingPoints < ActiveRecord::Migration
  def change
    create_table :bling_points do |t|
      t.integer :value

      t.timestamps
    end
  end
end
