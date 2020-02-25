# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# Use o dev:setup (lá esta fazendo tudo!)
=begin
spinner = TTY::Spinner.new("[:spinner] Cadastrando moedas...")


coins =  [
            {
                description: "Bitcoin",
                acronym: "BTC",
                url_image: "https://imagepng.org/wp-content/uploads/2017/06/moeda-bitcoin-coin.png",
                dollar_value: 8576.0
            },
            
            {
                description: "Ethereum",
                acronym: "ETH",
                url_image: "https://img2.gratispng.com/20180330/wae/kisspng-ethereum-bitcoin-cryptocurrency-logo-tether-bitcoin-5abdfe01b6f4b4.2459439115224007697494.jpg",
                dollar_value: 167.34
            },
         
            {
                description: "Dash",
                acronym: "DASH",
                url_image: "http://cryptowiki.net/images/5/55/Dash.png",
                dollar_value: 111.71
            },
            
            {
                description: "Litecoin",
                acronym: "LTE",
                url_image: "https://www.pngjoy.com/pngm/841/9936079_litecoin-logo-ltc-400-litecoin-logo-transparent-png.png",
                dollar_value: 56.21
            },
            {
                description: "Iota",
                acronym: "Iota",
                url_image: "https://http2.mlstatic.com/iota-miota-D_NQ_NP_745195-MLB27906607491_082018-F.jpg",
                dollar_value: 0.27
            },
            {
                description: "ZCash",
                acronym: "ZEC",
                url_image: "https://z.cash/wp-content/uploads/2019/03/zcash-icon-fullcolor.png",
                dollar_value: 63
            }
        ]

coins.each do |coin|
    Coin.find_or_create_by!(coin)
end

spinner.auto_spin
spinner.success("(Sucesso!)")
=end