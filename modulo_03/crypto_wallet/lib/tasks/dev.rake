require 'tty-spinner'
namespace :dev do
  desc "Setup development environment"
  task setup: :environment do
    if Rails.env.development?
      show_spinner("Dropping database") { %x(rails db:drop) }
      show_spinner("Creating database") { %x(rails db:create) }
      show_spinner("Migrating") { %x(rails db:migrate) }
      show_spinner("Seeding database") {
        %x(rails dev:add_mining_types) 
        %x(rails dev:add_coins) 
      }
    else
      puts "Not in the development mode!"
    end
  end

  def show_spinner(task)
    spinner = TTY::Spinner.new("[:spinner] #{task} ...", format: :pulse_2)
      spinner.auto_spin # Automatic animation with default interval
      yield
      spinner.success('(successful)')
  end

  desc "Add coins to the database"
  task add_coins: :environment do
    coins = [
      { 
          description: "Bitcoin",
          acronym: "BTC",
          url_image: "http://pngimg.com/uploads/bitcoin/bitcoin_PNG47.png",
          mining_type: MiningType.find_by(acronym: 'PoC')
      },
      {
          description: "Ethereum",
          acronym: "ETH",
          url_image: "https://i.redd.it/bfo1798dlo7z.png",
          mining_type: MiningType.all.sample
      },
      {
          description: "Dash",
          acronym: "DASH",
          url_image: "https://s2.coinmarketcap.com/static/img/coins/200x200/660.png",
          mining_type: MiningType.all.sample
      },
      {
          description: "Iota",
          acronym: "IOT",
          url_image: "http://icons.iconarchive.com/icons/cjdowner/cryptocurrency/256/IOTA-icon.png",
          mining_type: MiningType.all.sample
      },
      {
          description: "ZCash",
          acronym: "ZEC",
          url_image: "https://cdn4.iconfinder.com/data/icons/cryptocurrency-vanilla-coins/90/Coin-ZEC-Vanilla-512.png",
          mining_type: MiningType.all.sample
      }
    ]

    coins.each do |coin|
        Coin.find_or_create_by!(coin)
    end
  end

  desc "Add mining types to the database"
  task add_mining_types: :environment do
    mining_types = [
      {
        description: "Proof of Work",
        acronym: "PoW"
      },
      {
        description: "Proof of Stake",
        acronym: "PoS"
      },
      {
        description: "Proof of Capacity",
        acronym: "PoC"
      }
    ]

    mining_types.each do |mining_type|
      MiningType.find_or_create_by!(mining_type)
    end
  end
end
