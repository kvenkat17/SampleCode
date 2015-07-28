json.array!(@records) do |record|
  json.extract! record, :id, :pet_name, :type_of_pet, :breed, :age, :weight, :last_visit_date
  json.url record_url(record, format: :json)
end
