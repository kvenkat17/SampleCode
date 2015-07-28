rjson.array!(@veterinarydocslists) do |veterinarydocslist|
  json.extract! veterinarydocslist, :id, :name, :address, :city, :state, :zip, :school_degree_recvd, :years_in_practice
  json.url veterinarydocslist_url(veterinarydocslist, format: :json)
end
