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
    url_image: "https://www.pngjoy.com/pngm/841/9936079_litecoin-logo-ltc-400-litecoin-logo-transparent-png.png",
    dollar_value: 56.21
)

puts "Moedas cadastradas com sucesso!"