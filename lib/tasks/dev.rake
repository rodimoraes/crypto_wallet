namespace :dev do
  desc "Configura a base para começar a utilizar a aplicação"
  task setup: :environment do
    if Rails.env.development?
    spinner = TTY::Spinner.new("[:spinner] Deletando Banco de Dados...")
    spinner.auto_spin
    %x(rails db:drop)
    spinner.success('(Concluído com sucesso!)')

    spinner = TTY::Spinner.new("[:spinner] Criando Banco de Dados...")
    spinner.auto_spin
    %x(rails db:create)
    spinner.success('(Concluído com sucesso!)')


    spinner = TTY::Spinner.new("[:spinner] Migrando Banco de Dados...")
    spinner.auto_spin
    %x(rails db:migrate)
    spinner.success('(Concluído com sucesso!)')


    spinner = TTY::Spinner.new("[:spinner] Populando Banco de Dados...")
    spinner.auto_spin
    %x(rails db:seed)
    spinner.success('(Concluído com sucesso!)')
    else
      puts "Você precisa estar em ambiente de desenvolvimento"
    end
  end
end
