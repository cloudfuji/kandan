Dir["#{Rails.root}/lib/broadcasters/**/*.rb"].each do |file|
  require file
end


module Kandan
  def self.devise_modules
    standard = [:database_authenticatable, :registerable, :confirmable,
      :recoverable, :rememberable, :trackable, :validatable, :token_authenticatable]
    bushido = [:bushido_authenticatable, :trackable, :token_authenticatable]

    ::Bushido::Platform.on_bushido? ? bushido : standard
  end
end
