class AddCountToPages < ActiveRecord::Migration[5.1]
  def change
    add_column :pages, :count, :integer
  end
end
