json.array!(@contracts) do |contract|
  json.extract! contract, :id, :contract_no, :contract_start, :contract_end, :duty_officer, :fees
  json.url contract_url(contract, format: :json)
end
