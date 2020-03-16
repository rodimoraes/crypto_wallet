module ApplicationHelper
  def data_br(data_us)
    data_us.strftime("%d/%m/%Y")
  end

  def nome_aplicacao
    "Crypto Wallet"
  end

  def ambiente?(env)
    if env == "development"
      return "Desenvolvimento"
    elsif env == "production"
      return "Produção"
    else
      return "Teste"
    end
  end

  def desenvolvedor
    return "Desenvolvedor: Rodrigo Moraes"
  end

  def locale 
    I18n.locale== :en ? "Inglês - EUA " : "Português - Brasil"
    # é um tipo de if simplificado (usado quando só tem duas respostas)
  end
end
