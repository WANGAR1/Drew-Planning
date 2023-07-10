json.array!(@guests) do |guest|
    json.extract! guest, :id, :name, :email, :rsvp_status
  end