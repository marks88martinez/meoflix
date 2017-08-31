class Idioma < ActiveRecord::Base
  has_one :texto
  def idiomas
    "#{id}.#{nombre}"
  end
end
