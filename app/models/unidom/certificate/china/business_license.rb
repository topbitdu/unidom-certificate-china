##
# Business License 是中国的工商营业执照。

class Unidom::Certificate::China::BusinessLicense < Unidom::Certificate::China::ApplicationRecord

  FORMAT_VALIDATION_REGEX = /\A\d{15}\z/

  self.table_name = 'unidom_china_business_licenses'

  include Unidom::Common::Concerns::ModelExtension
  include Unidom::Certificate::Concerns::AsCertification

  validates :registration_number,              allow_blank: true, length: { is: columns_hash['registration_number'].limit              }, numericality: { integer_only: true }, format: self::FORMAT_VALIDATION_REGEX
  # GB 32100-2015《法人和其他组织统一社会信用代码编码规则》
  validates :unified_social_credit_identifier, allow_blank: true, length: { is: columns_hash['unified_social_credit_identifier'].limit }

  validates :address, presence: true, length: { in: 2..columns_hash['address'].limit }
  validates :name,    presence: true, length: { in: 2..columns_hash['name'].limit    }

  validates :legal_representative_name, presence:    true, length: { in: 2..columns_hash['legal_representative_name'].limit }
  validates :issuing_authority_name,    allow_blank: true, length: { in: 2..columns_hash['issuing_authority_name'].limit    }

  scope :registration_number_is,              ->(registration_number)              { where registration_number:              registration_number              }
  scope :unified_social_credit_identifier_is, ->(unified_social_credit_identifier) { where unified_social_credit_identifier: unified_social_credit_identifier }

end
