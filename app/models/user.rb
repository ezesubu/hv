
class User

  include Mongoid::Document




  field :provider, type: String

  field :uid, type: String

  field :name, type: String

  field :oauth_token, type: String

  field :oauth_expires_at, type: 2


end

