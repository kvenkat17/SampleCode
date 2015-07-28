json.array!(@apptschedules) do |apptschedule|
  json.extract! apptschedule, :id, :date_of_visit, :pet_name, :customer, :reminder_flag, :visit_reason, :doctor
  json.url apptschedule_url(apptschedule, format: :json)
end
