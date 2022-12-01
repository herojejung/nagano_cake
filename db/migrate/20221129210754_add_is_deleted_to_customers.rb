class AddIsDeletedToCustomers < ActiveRecord::Migration[7.0]
  def change
    add_column :customers, :is_deleted, :boolean, default: false
  end
end
