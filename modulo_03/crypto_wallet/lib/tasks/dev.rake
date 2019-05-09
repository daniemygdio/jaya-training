namespace :dev do
  desc "Setup development environment"
  task setup: :environment do
    %x(rails db:drop db:create db:migrate db:seed)
  end

end
