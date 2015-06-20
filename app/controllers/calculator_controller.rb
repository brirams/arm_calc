class CalculatorController < ActionController::Base
  # this is dumb -- could be done better
  def parse_params
    request_params = JSON.parse(request.body.read)
    loan_state_id = request_params['id'].to_i
    principal = request_params["principal"].to_f
    interest_rate_regime = request_params["interest_rate_regime"].map { |i| i.to_f }

    [loan_state_id, principal, interest_rate_regime]
  end

  def arm
    id, principal, interest_rate_regime = parse_params
    state = LoanState.find(id)
    # curve = {
    # 0 => 100,
    # 1 => 200
    # }.to_json

    render :json => state
  end
end
