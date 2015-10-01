json.array!(@wallets) do |wallet|
  json.extract! wallet, :id, :amount, :exchange_type, :recipient
  json.url wallet_url(wallet, format: :json)
end
