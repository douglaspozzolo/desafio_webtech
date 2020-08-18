namespace :dev do
  desc "TODO"
  task setup: :environment do
  end

  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      puts 'Criando os paranaue'
      %x{rails db:drop}
      %x{rails db:create}
      %x{rails db:migrate}
      %x{rails dev:add_defaut_user}
    else
      puts "Você não está em ambiente de desenvolvimento!"
    end

  end
  desc "Adiciona usuário padrão"
  task add_defaut_user: :environment do
    User.create!(email: 'usuario@desafiowebtech.com',
                 password: 123456,
                 password_confirmation: 123456)
  end
end
