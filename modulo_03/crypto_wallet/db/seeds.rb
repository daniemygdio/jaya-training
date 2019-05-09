# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

coins = [
    { 
        description: "Bitcoin",
        acronym: "BTC",
        url_image: "http://pngimg.com/uploads/bitcoin/bitcoin_PNG47.png"
    },
    {
        description: "Ethereum",
        acronym: "ETH",
        url_image: "https://i.redd.it/bfo1798dlo7z.png"
    },
    {
        description: "Dash",
        acronym: "DASH",
        url_image: "https://s2.coinmarketcap.com/static/img/coins/200x200/660.png"
    }
]

coins.each do |coin|
    Coin.find_or_create_by!(coin)
end