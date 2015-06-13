json.array!(@listings) do |listing|
  json.extract! listing, :id, :username, :password, :Posting, :title, :zip, :description, :sqft, :rent, :bedrooms, :bathooms, :street, :Xstreet, :city, :state
  json.url listing_url(listing, format: :json)
end
