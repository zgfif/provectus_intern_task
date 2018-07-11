# tt
class MakeDefaultValueComplete < ActiveRecord::Migration[5.1]
  def change
    change_column :events, :complete, :boolean, default: false
  end
end
