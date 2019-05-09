module ApplicationHelper
    def brazilian_date(us_date)
        us_date.strftime("%d/%m/%Y")
    end

    def application_name
        "Crypto Wallet App"
    end

    def translate_environment
        if Rails.env.development?
            "desenvolvimento"
        elsif Rails.env.production?
            "produção"
        else
            "teste"
        end
    end
end
