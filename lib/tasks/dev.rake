namespace :dev do
  
  desc "Configura a base para começar a utilizar a aplicação"
  task setup: :environment do
    if Rails.env.development?
      show_spinner("Apagando Banco de Dados..."){%x(rails db:drop)}
      show_spinner("Criando Banco de Dados..."){%x(rails db:create)}
      show_spinner("Migrando o Banco de Dados..."){%x(rails db:migrate)}
      %x(rails dev:add_coins)
      %x(rails dev:add_mining_types)
    else
      puts "Você precisa estar em ambiente de desenvolvimento"
    end
  end

    desc "Cadastra as moedas"
    task add_coins: :environment do
      show_spinner("Cadastrando moedas...") do
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
      end
    end


    desc "Cadastro dos tipos de mineração"
    task add_mining_types: :environment do
      show_spinner("Cadastrando os tipos de mineração...")do
      mining_types = [
        {description: "Proof of Work",acronym: "PoW"},
        {description: "Proof of Stake",acronym: "PoS"},
        {description: "Proof of Capacity",acronym: "PoC"}
      ]

      mining_types.each do |mining_type|
        MiningType.find_or_create_by(mining_type)
      end
    end
  end

    def show_spinner(msg_inicio,msg_final = "Concluído com sucesso!")
      spinner = TTY::Spinner.new("[:spinner] #{msg_inicio}")
      spinner.auto_spin
      yield
      spinner.success("(#{msg_final})")
    end 
  end
