module Unidom::Certificate::China::Concerns::AsIdentityCardCertificated

  extend ActiveSupport::Concern

  include Unidom::Certificate::Concerns::AsCertificated

  included do |includer|

    has_many :china_identity_cards, through: :certificatings, source: :certification, source_type: 'Unidom::Certificate::China::IdentityCard'

  end

end
