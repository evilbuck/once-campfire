class AddParentIdToMessages < ActiveRecord::Migration[7.2]
  def change
    add_reference :messages, :parent, foreign_key: { to_table: :messages }, index: true
  end
end