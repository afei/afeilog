json.array!(@companies) do |company|
  json.extract! company, :id, :code,, :name,, :area,, :address,, :contacter,, :contact_number
  json.url company_url(company, format: :json)
end
