# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Cadastrando moedas..."

Coin.create!(
    description: "Bitcoin",
    acronym: "BTC",
    url_image: "https://imagepng.org/wp-content/uploads/2017/06/moeda-bitcoin-coin.png",
    dollar_value: 8576.0
)

Coin.create!(
    description: "Ethereum",
    acronym: "ETH",
    url_image: "https://img2.gratispng.com/20180330/wae/kisspng-ethereum-bitcoin-cryptocurrency-logo-tether-bitcoin-5abdfe01b6f4b4.2459439115224007697494.jpg",
    dollar_value: 167.34
)

Coin.create!(
    description: "Dash",
    acronym: "DASH",
    url_image: "http://cryptowiki.net/images/5/55/Dash.png",
    dollar_value: 111.71
)

Coin.create!(
    description: "Litecoin",
    acronym: "LTE",
    url_image: "data:image/png;base64,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",
    dollar_value: 56.21
)

puts "Moedas cadastradas com sucesso!"