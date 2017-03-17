class Addalertstouser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :alert, :integer
  end
end
