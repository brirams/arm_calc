class CreateLoanStates < ActiveRecord::Migration
  def change
    create_table :loan_states do |t|
      t.float :monthly_payment
      t.float :interest_rate
      t.float :principal_remaining
      t.float :interest_payment
      t.float :principal_payment

      t.timestamps null: false
    end
  end
end
