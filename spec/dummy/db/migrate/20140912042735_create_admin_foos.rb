class CreateAdminFoos < ActiveRecord::Migration
  def change
    create_table :admin_foos do |t|
      t.string :bar

      t.timestamps
    end
  end
end
