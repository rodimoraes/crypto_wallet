namespace :dev do
  desc "Configura a base para começar a utilizar a aplicação"
  task setup: :environment do

    def show_spinner(msg_inicio,msg_final = "Concluído com sucesso!")
      spinner = TTY::Spinner.new("[:spinner] #{msg_inicio}")
      spinner.auto_spin
      yield
      spinner.success("(#{msg_final})")
    end

    if Rails.env.development?
      show_spinner("Apagando Banco de Dados..."){%x(rails db:drop)}
      show_spinner("Criando Banco de Dados..."){%x(rails db:create)}
      show_spinner("Migrando o Banco de Dados..."){%x(rails db:migrate)}
      show_spinner("Populando o Banco de Dados..."){%x(rails db:seed)} 
    else
      puts "Você precisa estar em ambiente de desenvolvimento"
    end

    

  end
end
