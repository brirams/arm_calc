class LoanStatesController < ActionController::Base
  def show
    @loan_state = LoanState.find(params[:id])
    render :json => @loan_state
  end

  def create
    @loan_state = LoanState.create(state_params)
    render :json => @loan_state
  end

  private
  def state_params
    params.permit(
      :monthly_payment,
      :interest_rate,
      :principal_remaining,
      :interest_payment,
      :principal_payment
    )
  end
end
