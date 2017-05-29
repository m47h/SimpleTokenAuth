class AddUserToTransfers < ActiveRecord::Migration[5.1]
  def change
    add_reference :transfers, :user, foreign_key: true
  end
end
