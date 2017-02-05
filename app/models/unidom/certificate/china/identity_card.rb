##
# Identity Card 是中国身份证。

class Unidom::Certificate::China::IdentityCard < Unidom::Certificate::China::ApplicationRecord

  FORMAT_VALIDATION_REGEX = /\A\d{17}[\dx]\z/i

  self.table_name = 'unidom_china_identity_cards'

  include Unidom::Common::Concerns::ModelExtension
  include Unidom::Certificate::Concerns::AsCertification

  validates :identification_number, presence: true, length: { is: self.columns_hash['identification_number'].limit }, format: FORMAT_VALIDATION_REGEX

  validates :name,    presence: true, length: { in: 2..self.columns_hash['name'].limit    }
  validates :address, presence: true, length: { in: 2..self.columns_hash['address'].limit }

  validates :issuing_authority_name, allow_blank: true, length: { in: 2..self.columns_hash['issuing_authority_name'].limit }

  scope :identification_number_is, ->(identification_number) { where identification_number: identification_number }

  after_validation do
    if errors.blank?
      self.identification_number = self.identification_number.upcase
      self.birth_date            = Date.parse "#{identification_number[6..9]}-#{identification_number[10..11]}-#{identification_number[12..13]}"
      self.gender_code           = identification_number[16].to_i.odd? ? '1' : '2'
    end
  end

end unless Unidom::Common::Neglection.namespace_neglected? 'Unidom::Certificate::China::IdentityCard'
