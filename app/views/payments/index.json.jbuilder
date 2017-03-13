json.array!(@payments) do |payment|
  json.extract! payment, :id, :pay_day, :pay_amount, :contract_no, :contract_id
  json.url payment_url(payment, format: :json)
end
