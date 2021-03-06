# encoding: UTF-8
# Extensive Docs at http://github.com/innku/innsights-gem

Innsights.setup do

  user Company do
    display :title
  end

  watch Company do
    report 'Nueva Compañia'
    user lambda { |company| company }
  end

  watch Job do
    report 'Nueva oferta'
    user :company
    group :city
  end

  config :test do
    enable false
  end

end
