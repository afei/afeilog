json.array!(@devices) do |device|
  json.extract! device, :id, :device_code, :serial_no, :model_no, :manufacturer, :first_use_date, :verify_date, :company_id
  json.url device_url(device, format: :json)
end
