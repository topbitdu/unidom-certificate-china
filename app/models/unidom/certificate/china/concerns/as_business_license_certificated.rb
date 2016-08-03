module Unidom::Certificate::China::Concerns::AsBusinessLicenseCertificated

  extend ActiveSupport::Concern

  include Unidom::Certificate::Concerns::AsCertificated

  self.included do |includer|

    has_many :china_business_licenses, through: :certificatings, source: :certification, source_type: 'Unidom::Certificate::China::BusinessLicense'

  end

end
