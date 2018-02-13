class AddSignUpCodeToMoussaillons < ActiveRecord::Migration[5.1]
  def change
    add_column :moussaillons, :sign_up_code, :string
  end
end
